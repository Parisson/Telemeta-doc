'use strict';

// Necessary Plugins
var gulp     = require('gulp');
var plumber  = require('gulp-plumber');
var cache    = require('gulp-cache');
var imagemin = require('gulp-imagemin');
var paths    = require('../paths');

// Call Imagemin
module.exports = gulp.task('imagemin', function() {
  return gulp.src(paths.source.img)
    .pipe(plumber())
    .pipe(cache(imagemin({
      optimizationLevel: 3,
      progressive: true,
      interlaced: true
    })))
    .pipe(gulp.dest(paths.build.img));
});
