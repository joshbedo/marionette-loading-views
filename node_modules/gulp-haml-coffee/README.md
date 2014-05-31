#Gulp-Haml-Coffee
[![Build Status](https://travis-ci.org/saschagehlich/gulp-haml-coffee.png?branch=master)](https://travis-ci.org/saschagehlich/gulp-haml-coffee)
[![NPM version](https://badge.fury.io/js/gulp-haml-coffee.png)](http://badge.fury.io/js/gulp-haml-coffee)

Issues with the output should be reported on [haml](https://github.com/netzpirat/haml-coffee)

## Information

<table>
<tr>
<td>Package</td><td>gulp-haml-coffee</td>
</tr>
<tr>
<td>Description</td>
<td>haml-coffee plugin for Gulp</td>
</tr>
<tr>
<td>Node Version</td>
<td>>= 0.9</td>
</tr>
<tr>
<td>Gulp Version</td>
<td>3.x</td>
</tr>
</table>

## Usage
#### Install
    npm install gulp-haml-coffee --save

## Examples

```javascript

// Gulpfile.js
// Require the needed packages
var gulp = require('gulp');
var hamlc = require('gulp-haml-coffee');


// Get one .hamlc file and render
gulp.task('one', function () {
  gulp.src('./haml/file.hamlc')
    .pipe(hamlc())
    .pipe(gulp.dest('./html'));
});


// Get all .hamlc files in one folder and render
gulp.task('one', function () {
  gulp.src('./haml/blue/*.hamlc')
    .pipe(hamlc())
    .pipe(gulp.dest('./haml/blue'));
});



// Get and render all .hamlc files recursively
gulp.task('hamlc', function () {
  gulp.src('./haml/**/*.hamlc')
    .pipe(hamlc())
    .pipe(gulp.dest('./haml'));
});


// Default gulp task to run
gulp.task('default', function(){
  gulp.run('haml', 'one');
});

```

Please note that `gulp-haml-coffee` compiles to plain HTML per default. If you
want it to compile to JavaScript instead, pass `{ js: true }` to the module.

## Options
`Object, String`

Options are passed straight through to the [haml-coffee](https://npmjs.org/package/haml-coffee) module.

## LICENSE

(MIT License)

Copyright (c) 2014 Sascha Gehlich <sascha@gehlich.us>
Derived from gulp-haml by Steve Lacy (http://slacy.me)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
