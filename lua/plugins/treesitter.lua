return {
	"nvim-treesitter/nvim-treesitter",
	event = { "LazyFile" },
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	config = function()
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"python",
				"rust",
				"go",
				"html",
				"css",
				"markdown",
			},
			auto_install = false,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
				disable = { "go" },
			},
		})

		parser_config.ejs = {
			install_info = {
				url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
				files = { "src/parser.c" },
				branch = "master",
				requires_generate_from_grammar = true,
			},
			filetype = "ejs",
		}

		parser_config.fasm = {
			install_info = {
				url = "~/programming/projects/tree-sitter-fasm/",
				files = { "src/parser.c" },
				requires_generate_from_grammar = true,
			},
			filetype = "fasm",
		}
	end,
}
