return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- Provider config
      provider = "gemini", -- Options: "claude", "openai", "azure", "gemini", "cohere", "copilot"
      gemini = {
        model = "gemini-2.0-flash-exp", -- You can change this to gemini-1.5-pro, etc.
        temperature = 0,
        max_tokens = 4096,
      },
      -- Behavior config
      behaviour = {
        auto_suggestions = false, -- Experimental - similar to Copilot Ghost Text
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = false,
        support_paste_from_clipboard = true,
      },
    },
    -- Build command (Use the PowerShell one for Windows if make fails, but 'make' usually works if installed)
    build = "make", 
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false", -- Windows alternative

    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      
      -- Optional: Icons
      "nvim-tree/nvim-web-devicons", 
      
      -- Optional: Markdown rendering for the chat
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
