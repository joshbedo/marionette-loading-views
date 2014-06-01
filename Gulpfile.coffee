gulp = require 'gulp'
watch = require 'gulp-watch'
gutil = require 'gutil'
coffee = require 'gulp-coffee'
sass = require 'gulp-sass'
hamlc = require 'gulp-haml-coffee'
  
gulp.task 'coffee', ->
  gulp.src './app/*.coffee'
    .pipe watch (files) ->
      return files.pipe(coffee(bare:true))
        .pipe gulp.dest './public/'

gulp.task 'sass', ->
  gulp.src './app/styles/**/*.scss'
    .pipe watch (files) ->
      return files.pipe(sass())
        .pipe gulp.dest './public/styles'

gulp.task 'hamlc', ->
  gulp.src './app/templates/**/*.hamlc'
    .pipe(hamlc())
    .pipe gulp.dest('./public/templates/')

gulp.task 'default', ['coffee', 'sass', 'hamlc']
