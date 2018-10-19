'use strict';

// Necessary Plugins
var gulp    = require('gulp');
var plumber = require('gulp-plumber');
var jade    = require('gulp-jade');
var paths   = require('../paths');

// Call Jade to compile templates
module.exports = gulp.task('jade', function() {
  return gulp.src(paths.source.files.jade)
    .pipe(plumber())
    .pipe(jade({
      pretty: true
    }))
    .pipe(gulp.dest(paths.build.html));
});
