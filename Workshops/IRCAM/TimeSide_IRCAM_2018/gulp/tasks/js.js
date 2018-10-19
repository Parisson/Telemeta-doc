'use strict';

// Necessary Plugins
var gulp    = require('gulp');
var plumber = require('gulp-plumber');
var uglify  = require('gulp-uglify');
var paths   = require('../paths');

// Call Uglify and concat JS
module.exports = gulp.task('js', function() {
  return gulp.src(paths.source.js)
    .pipe(plumber())
    .pipe(uglify())
    .pipe(gulp.dest(paths.build.js));
});
