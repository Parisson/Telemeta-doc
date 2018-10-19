'use strict';

// Necessary Plugins
var gulp   = require('gulp');
var deploy = require('gulp-gh-pages');
var paths  = require('../paths');

// Deploy to GitHub pages
module.exports = gulp.task('deploy-pages', function() {
  return gulp.src(paths.deploy.pages)
    .pipe(deploy());
});
