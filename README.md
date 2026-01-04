# Neovim Setup

A fast, modern **Neovim setup** built for daily development.
Opinionated where it matters, minimal where it counts. Designed to stay fast, readable, and maintainable as it evolves.

This setup reflects how I actually work: clean UI, deliberate ergonomics, and a modular Lua architecture that scales without becoming fragile.

---

## ✨ Feature Highlights

* ⚡ **Fast startup** with lazy-loaded plugins
* 🎨 **Clean and modern UI** with polished visuals
* ⌨️ **Thoughtful keymaps** focused on editor ergonomics
* 🧠 **LSP, formatting, and tooling** for real-world projects
* 🔍 **Telescope-powered navigation** and search
* 🌳 **Tree-sitter based syntax highlighting**
* 🔔 **Refined notifications and UI components**
* 🧩 **Modular and easy-to-extend structure**

---

## 🧩 Core Components

* **Plugin management** powered by `lazy.nvim`
* **Language Server Protocol (LSP)** with sane defaults
* **Formatting & diagnostics** wired for consistency
* **Navigation & search** centered around Telescope
* **UI layer** focused on clarity, not distraction

Every component is configured explicitly. No hidden magic, no unnecessary abstractions.

---

## ⌨️ Keybinding Philosophy

Keymaps are designed to be:

* **Intentional** — every mapping earns its place
* **Mnemonic** — easy to remember, hard to forget
* **Consistent** — predictable behavior across modes

Defaults are respected unless there is a strong reason to improve them. The goal is uninterrupted flow and reduced cognitive load.

---

## 📁 Directory Structure

```text
~/.config/nvim
├── init.lua
├── lua/
│   ├── config/        # autocmds, keymaps, options
│   ├── lazy/          # lazy.nvim setup & plugin specs
│   ├── craftzdog/     # custom hacks (cowboy-style tweaks)
│   └── plugins/       # individual plugin configurations
```

Each directory has a single responsibility, making the setup easy to navigate, debug, and extend.

---

## 🚀 Installation

```bash
git clone https://github.com/ExploitEngineer/nvim ~/.config/nvim
```

Then launch Neovim:

```bash
nvim
```

Plugins will install automatically on first launch.

---

## 🛠 Customization Notes

* Global options, keymaps, and autocmds live in `lua/config/`
* Plugins are declared and managed under `lua/lazy/`
* Individual plugin behavior is isolated in `lua/plugins/`
* Experimental or unconventional tweaks belong in `lua/craftzdog/`

This structure is intentional—extend it without rewriting it.

---

## 🧭 Final Note

This Neovim setup is not static. It evolves alongside my workflow, tools, and ideas.

If you adopt it, treat it as a foundation—not a finished product.
