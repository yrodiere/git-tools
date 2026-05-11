# git-tools

A collection of git utilities.

## Installation

### Bash

#### Option 1: Using ~/.bashrc.d (recommended)

If your `.bashrc` sources files from `~/.bashrc.d`, just symlink the setup script:

```bash
mkdir -p ~/.bashrc.d
ln -s /path/to/git-tools/setup.bash ~/.bashrc.d/git-tools
```

Then restart your shell or run `source ~/.bashrc`.

#### Option 2: Direct source

Alternatively, add one line to your `~/.bashrc`:

```bash
source /path/to/git-tools/setup.bash
```

### Zsh

#### Option 1: Direct source (recommended)

Add one line to your `~/.zshrc`:

```zsh
source /path/to/git-tools/setup.bash
```

#### Option 2: Oh-My-Zsh custom directory

If using oh-my-zsh, you can alternatively symlink to the custom directory:

```bash
ln -s /path/to/git-tools/setup.bash ~/.oh-my-zsh/custom/git-tools.zsh
```

Files in `~/.oh-my-zsh/custom/` ending in `.zsh` are automatically sourced. Then restart your shell.

---

The setup script handles both PATH and completions for both shells. When you `git pull` updates, everything auto-updates.

## Completion-enabled commands

The following commands have bash completion support:

- `git authors` - Tab completes: `list`, `grep-javadoc`
- `git fork` - Tab completes: `setup`, `purge`, `get`, `branch` (with context-aware options)
- `git isx` - Tab completes: `get`, `put` (plus branch/tag names)
- `git jira` - Tab completes: `setup`, `info`
- `git pr` - Tab completes: `setuser`, `create` (plus branch names)
- `git test` - Tab completes: `setup` (plus remotes and refs)
- `git trim` - Tab completes: `jira`, `pr`, `merged`, `list` (plus branch names)
