gulp = require 'gulp'
watch = require 'gulp-watch'
gutil = require 'gutil'
coffee = require 'gulp-coffee'
hamlc = require 'gulp-haml-coffee'
  
gulp.task 'coffee', ->
  gulp.src './app/*.coffee'
    .pipe watch (files) ->
      return files.pipe(coffee(bare:true))
        .pipe gulp.dest './public/'

gulp.task 'hamlc', ->
  gulp.src './app/templates/**/*.hamlc'
    .pipe(hamlc())
    .pipe gulp.dest('./public/templates/')

gulp.task 'watch', ->
  gulp.src

gulp.task 'default', ['coffee', 'hamlc', 'watch']
