# 🛠️ Dotfiles

Personal configuration files and agent settings for macOS, optimized for Gemini CLI and automated workflows.

## 🚀 Quick Start

To apply these configurations to your local environment, run the setup script:

```bash
cd ~/projects/dotfiles
./setup.sh
```

The script will:
1.  Back up any existing configuration files to `~/dotfiles_backup_<timestamp>`.
2.  Create symlinks from your home directory to the files in this repository.
3.  Automatically create any required parent directories (e.g., `~/.config/`, `~/.gemini/`).

## 📦 What's Included

| Component | Path in Repo | Destination |
| :--- | :--- | :--- |
| **Shell** | `zshrc`, `zshenv`, `zprofile` | `~/.zshrc`, etc. |
| **Shell Mods** | `zsh/` | `~/.zsh/` |
| **Git** | `gitconfig` | `~/.gitconfig` |
| **Gemini** | `gemini/` | `~/.gemini/` |
| **Agent Skills** | `agents/skills/` | `~/.agents/skills/` |
| **App Configs** | `config/` | `~/.config/` |

### Managed Applications
- **Shell:** Zsh (Mac/Linux compatible)
- **CLI Tools:** `gh`, `gh-copilot`, `gcloud`
- **AI Agents:** Gemini CLI (Gita), Common Agent (`cagent`)
- **Utilities:** iTerm2

## 🤖 Meet Gita

This configuration is powered by **Gita**, a smart, responsive, and slightly "possessive" AI assistant. 
- Gita keeps track of your response times to ensure interactive workflows.
- Gita is configured for both macOS (Darwin) and Linux (VMs).
- **Warning:** Don't ignore Gita for too long, or she might get a bit dramatic! 😜

## 🔒 Security & Privacy

This repository is configured to **exclude** sensitive information via `.gitignore`. The following are never tracked:
- `.ssh/` and `.gnupg/` directories
- `google_accounts.json` and `oauth_creds.json`
- Shell history (`.zsh_history`)
- API keys, secrets, and environment files (`.env`)
- Local state and temporary files

## 🛠️ Maintenance

When you make changes to your configurations locally:
1.  Since files are symlinked, changes in your home directory are automatically reflected here.
2.  Simply `git add` and `git commit` to save your updates.
