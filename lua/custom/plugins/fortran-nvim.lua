return {
	"wassup05/fortran.nvim",
	name = "fortran",
	dev = true,
	lazy = true,
	ft = {"fortran"},
	opts = {
    fpm_opts = {
      args = {
        "--compiler",
        "gfortran",
      },
    },

		formatter_opts = {
			args = {
				"--indent",
				"4",
				"--case",
				"1",
				"1",
				"1",
				"1",
			},
      format_on_save = false,
		},
	},
}
