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
| **Git** | `gitconfig` | `~/.gitconfig` |
| **Gemini** | `gemini/` | `~/.gemini/` |
| **Agent Skills** | `agents/skills/` | `~/.agents/skills/` |
| **Agent Store** | `cagent/store/` | `~/.cagent/store/` |
| **App Configs** | `config/` | `~/.config/` |

### Managed Applications
- **Shell:** Zsh (Mac default)
- **CLI Tools:** `gh`, `gh-copilot`, `gcloud`
- **Agents:** Gemini CLI, Common Agent (`cagent`)
- **Utilities:** iTerm2, PeaZip, FileZilla

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
