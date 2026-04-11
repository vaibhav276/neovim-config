vim.g.mapleader = " "

require("which-key").add({
  { "<leader>f", group = "File" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find" },
  { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent" },
  { "<leader>ft", "<cmd>NvimTreeToggle<cr>", desc = "Tree" },

  { "<leader>b", group = "Buffer" },
  { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "Find" },
  { "<leader>bs", "<cmd>tabnew<cr>", desc = "Scratch" },

  { "<leader>s", group = "Search" },
  { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },

  { "<leader>g", group = "Git" },
  { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Status" },
  { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Commits" },

})

