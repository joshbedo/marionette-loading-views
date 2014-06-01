define(['marionette'], function(Marionette) {
  console.log("router created");
  return Marionette.AppRouter.extend({
    appRoutes: {
      "": "index"
    }
  });
});
