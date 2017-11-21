exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      joinTo: 'js/app.js',
    },
    stylesheets: {
      joinTo: 'css/app.css',
      order: {
        after: ['assets/css/app.scss'],
      },
    },
    templates: {
      joinTo: 'js/app.js',
    },
  },

  conventions: {
    // This option sets where we should place non-css and non-js assets in.
    // By default, we set this to "/assets/static". Files in this directory
    // will be copied to `paths.public`, which is "priv/static" by default.
    assets: /^(static)/,
  },

  // Phoenix paths configuration
  paths: {
    // Dependencies and current project directories to watch
    watched: ['static', 'css', 'js', 'vendor'],
    // Where to compile files to
    public: '../priv/static',
  },

  // Configure your plugins
  plugins: {
    babel: {
      // Do not use ES6 compiler in vendor code
      ignore: [/vendor/],
    },
    copycat: {
      fonts: ['node_modules/font-awesome/fonts'],
    },
    sass: {
      options: {
        includePaths: [
          'node_modules/bootstrap/scss',
          'node_modules/bootswatch/dist',
          'node_modules/font-awesome/scss',
        ],
        precision: 8,
      },
    },
  },

  modules: {
    autoRequire: {
      'js/app.js': ['js/app'],
    },
  },

  npm: {
    enabled: true,
    globals: {
      $: 'jquery',
      jQuery: 'jquery',
      Tether: 'tether',
      bootstrap: 'bootstrap',
    },
  },
};
