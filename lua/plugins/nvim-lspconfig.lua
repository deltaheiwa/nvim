local on_attach = require("utils.lsp").on_attach

local config = function()
	require("neoconf").setup({})

	-- General
	-- local cmp_nvim_lsp = require('cmp_nvim_lsp')
	local blink_cmp = require("blink.cmp")
	local lspconfig = require("lspconfig")
	local diagnostic_signs = {
		Error = " ",
		Warn = " ",
		Hint = "",
		Info = "",
	}

	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	local capabilities = blink_cmp.get_lsp_capabilities()

	-- lua
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				-- make LS recognize vim global
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					-- make LS aware of runtime files
					library = {
						vim.fn.expand("$VIMRUNTIME/lua"),
						vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
					},
				},
			},
		},
	})

	-- python
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})

	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")

	-- efm server
	lspconfig.efm.setup({
		filetypes = { "lua", "python" },
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				python = { flake8, black },
			},
		},
	})

	-- rust
	vim.g.rustaceanvim = {
		server = {
			on_attach = on_attach(),
      autostart = true,
			settings = {
				["rust-analyzer"] = {
          cargo = { allFeatures = true },
          checkOnSave = { command = "clippy" },
        },
			},
		},
	}
end

return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = config,
	dependencies = {
		"windwp/nvim-autopairs",
		-- "hrsh7th/cmp-nvim-lsp",
		"williamboman/mason.nvim",
		"saghen/blink.cmp",
		"creativenull/efmls-configs-nvim",
	},
}
