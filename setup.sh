#!/bin/bash

# setup.sh - Dotfiles symlink automation script

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

# Define mapping: "repo_path:home_path"
# Paths relative to $DOTFILES_DIR and $HOME respectively
FILES_TO_LINK=(
    "zshrc:.zshrc"
    "zshenv:.zshenv"
    "zprofile:.zprofile"
    "zsh:.zsh"
    "gitconfig:.gitconfig"
    "gemini/settings.json:.gemini/settings.json"
    "gemini/GEMINI.md:.gemini/GEMINI.md"
    "agents/skills:.agents/skills"
    "cagent/store:.cagent/store"
    "config/gh:.config/gh"
    "config/iterm2:.config/iterm2"
    "config/gcloud:.config/gcloud"
    "config/gh-copilot:.config/gh-copilot"
    "config/cagent:.config/cagent"
)

echo "🚀 Starting dotfiles setup..."

for entry in "${FILES_TO_LINK[@]}"; do
    REPO_PATH="${entry%%:*}"
    HOME_PATH="${entry##*:}"
    
    SOURCE="$DOTFILES_DIR/$REPO_PATH"
    DEST="$HOME/$HOME_PATH"
    
    # Check if source exists in repo
    if [ ! -e "$SOURCE" ]; then
        echo "⚠️  Warning: Source $SOURCE does not exist, skipping..."
        continue
    fi
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$DEST")"
    
    # Handle existing files/links
    if [ -e "$DEST" ] || [ -L "$DEST" ]; then
        if [ -L "$DEST" ] && [ "$(readlink "$DEST")" == "$SOURCE" ]; then
            echo "✅ $HOME_PATH is already correctly linked."
            continue
        fi
        
        # Backup existing file
        echo "📦 Backing up existing $HOME_PATH to $BACKUP_DIR"
        mkdir -p "$BACKUP_DIR/$(dirname "$HOME_PATH")"
        mv "$DEST" "$BACKUP_DIR/$HOME_PATH"
    fi
    
    # Create symlink
    echo "🔗 Linking $HOME_PATH -> $REPO_PATH"
    ln -s "$SOURCE" "$DEST"
done

echo "✨ Setup complete! Backups (if any) are in $BACKUP_DIR"
