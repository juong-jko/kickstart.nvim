# Neovim "IDE" Workflow Guide

This guide summarizes your custom Neovim configuration, focusing on navigation, debugging, and git integration.

## 1. Project Navigation (The "Tabs" Killer)
Forget using the mouse to click tabs. Use **Telescope** and **Harpoon**.

### 🔍 Finding Files (Telescope)
| Key | Action | Description |
| :--- | :--- | :--- |
| `<space>sf` | **S**earch **F**iles | Find any file in the project by name. |
| `<space>sg` | **S**earch **G**rep | Search for *text* inside all files. |
| `<space><space>` | **Buffers** | Switch between currently open files (like Alt+Tab). |
| `<space>/` | **Fuzzy** | Search for text inside the *current* file. |

**💡 Pro Tip:** Inside the Telescope window:
*   **Enter**: Open file.
*   **Ctrl + v**: Open in **Vertical Split** (Side-by-side).
*   **Ctrl + x**: Open in **Horizontal Split**.

### 🔱 Fast Context Switch (Harpoon)
Mark your 3-4 active "work in progress" files to jump between them instantly.
*   **`<space>a`**: **A**dd current file to Harpoon.
*   **`Ctrl + e`**: Open the Harpoon menu (to remove/reorder files).
*   **`Ctrl + h` / `j` / `k` / `l`**: Jump to file 1, 2, 3, or 4 instantly.

---

## 2. Intelligence & Editing
Use the LSP (Language Server) to understand your code.

*   **`gd`**: **G**o to **D**efinition (Jump to where it's defined).
*   **`grr`**: **G**o to **R**eferences (See everywhere it's used).
*   **`grn`**: **R**e**n**ame (Smart rename across the whole project).
*   **`K`**: Hover documentation (Show type info/docs).

---

## 3. Debugging (DAP)
Run your code with breakpoints like a pro.

| Key | Action | Description |
| :--- | :--- | :--- |
| `<space>b` | **Breakpoint** | Toggle a breakpoint on the current line. |
| **F5** | **Start/Continue** | Start debugging or jump to next breakpoint. |
| **F1** | **Step Into** | Go *inside* the function. |
| **F2** | **Step Over** | Run line and go to next. |
| **F3** | **Step Out** | Finish function and return. |
| **F7** | **Toggle UI** | Open/Close the Debugger Interface. |

**Run without Debugging:**
*   For Go: `:GoRun` or `:term go run .`

---

## 4. Git Integration (Gitsigns)
Manage version control without leaving the editor.

*   **`<leader>hp`**: **H**unk **P**review (Float window showing changes on this line).
*   **`<leader>hd`**: **H**unk **D**iff (Open a split showing changes vs last commit).
*   **`<leader>tb`**: **T**oggle **B**lame (Show who wrote the current line).
*   **`]c` / `[c`**: Jump to Next / Previous change in the file.

---

## 5. Configuration Structure
Your config is modular. Add new plugins here:
*   `lua/custom/plugins/*.lua`: Create any new file here, and it auto-loads.
    *   `go.lua`: Go language specific settings.
    *   `themes.lua`: Color schemes.
    *   `harpoon.lua`: Harpoon settings.
