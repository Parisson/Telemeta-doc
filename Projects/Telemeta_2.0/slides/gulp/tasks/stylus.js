'use strict';

// Necessary Plugins
var gulp         = require('gulp');
var plumber      = require('gulp-plumber');
var stylus       = require('gulp-stylus');
var poststylus   = require('poststylus');
var autoprefixer = require('autoprefixer');
var csscomb      = require('gulp-csscomb');
var paths        = require('../paths');

// Call Stylus
module.exports = gulp.task('stylus', function() {
  var processors = [
    autoprefixer
  ];
  return gulp.src(paths.source.files.styl)
    .pipe(plumber())
    .pipe(stylus({
      compress: false,
      use: [
        poststylus(processors)
      ]
    }))
    .pipe(csscomb())
    .pipe(gulp.dest(paths.build.css));
});
