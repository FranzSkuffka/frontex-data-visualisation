axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: [
        'bower_components/**/jquery.min.js',
        'bower_components/topojson/topojson.js',
        'bower_components/d3/d3.js',
        'bower_components/**/datamaps.all.min.js',
        'assets/js/prepare.coffee'
        'assets/js/statistics/*.js'
        'assets/js/Vizualisation.coffee'
        'assets/js/map.coffee'
        'assets/js/crossings.coffee'
        'assets/js/refusals.coffee'
        'assets/js/routes.coffee'
        'assets/js/main.coffee'
        ]
        ),
    css_pipeline(files: 'assets/css/*.styl')
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
