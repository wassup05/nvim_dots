return {
	"wassup05/fortran.nvim",
	name = "fortran",
	dev = false,
	lazy = true,
	ft = {"fortran"},
	opts = {
		server_opts = {
			path = "fortls",
		},

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
		},
	},
}
