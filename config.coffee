fs   = require 'fs'
path = require 'path'

# See docs at http://brunch.readthedocs.org/en/latest/config.html.

exports.config =

  files:

    javascripts:
      defaultExtension: 'js',
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/

      order:
        before: [
          'vendor/scripts/jquery-1.10.2.js',
          'vendor/scripts/modernizr-2.6.2.js',
          'vendor/scripts/plugins.js'
          ]

    stylesheets:
      defaultExtension: 'css'
      joinTo: 'stylesheets/app.css'
      order:
        before: [
          'vendor/styles/bootstrap.css',
          'app/styles/application.less'
        ]

    templates:
      precompile: true
      root: 'templates'
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js' : /^app/

  conventions:
    ignored: -> false

  plugins:
    jshint:
      pattern: /^app\/app.js/
    autoReload:
      enabled:
        css: on
        js: on
        assets: on
    jade:
      pretty: yes

  server:
    port: 3333
    base: '/'
    run: no
