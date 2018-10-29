const { environment } = require("@rails/webpacker");

const webpack = require("webpack");

environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    jQuery: "jquery",
    $: "jquery",
    Tether: "tether",
    tether: "tether",
    Popper: ["popper.js", "default"]
  })
);

module.exports = environment;
