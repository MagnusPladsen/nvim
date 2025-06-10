return {
  n = {
    ["<C-d>"] = { "<leader>ma", desc = "Trigger leader + m + a" },
    ["<leader>P"] = { '"_dP', desc = "Better paste" },
    ["<C-J>"] = { "<C-W><C-J>", desc = "Move to the window below" },
    ["<C-K>"] = { "<C-W><C-K>", desc = "Move to the window above" },
    ["<C-L>"] = { "<C-W><C-L>", desc = "Move to the window to the right" },
    ["<C-H>"] = { "<C-W><C-H>", desc = "Move to the window to the left" },
    ["<C-s>"] = { "<cmd>w<cr>", desc = "Save file" }, -- Normal mode mapping
  },
  i = {
    ["<C-s>"] = { "<Esc><cmd>w<cr>", desc = "Save file" }, -- Insert mode mapping
  },
  v = {
    ["<C-s>"] = { "<Esc><cmd>w<cr>", desc = "Save file" }, -- Insert mode mapping
  },
}
