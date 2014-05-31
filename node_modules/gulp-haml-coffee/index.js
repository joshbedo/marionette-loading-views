var map = require('map-stream');
var rext = require('replace-ext');
var hamlc = require('haml-coffee');

module.exports = function(options) {
  if(!options) options = {};

  // Map each file to this function
  function hamlStream(file, cb) {
    if (file.isNull()) return cb(null, file); // pass along
    if (file.isStream()) return cb(new Error("gulp-haml-coffee: Streaming not supported"));

    // gulp-haml-coffee compiles to plain HTML per default. If the `js` option is set,
    // it will compile to a JS function.
    var output;
    if (options.js) {
      output = hamlc.template(file.contents.toString("utf8"), options.name, options.namespace, options);
      file.path = rext(file.path, ".js");
    } else {
      output = hamlc.render(file.contents.toString("utf8"), options.locals || {});
      file.path = rext(file.path, ".html");
    }
    file.contents = new Buffer(output);

    cb(null, file);
  }

  // Return a stream
  return map(hamlStream);
};
