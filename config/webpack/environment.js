const { environment } = require("@rails/webpacker");

const webpack = require("webpack");
const config = require("@rails/webpacker/package/config");
const ManifestPlugin = require("webpack-manifest-plugin");

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

environment.plugins.append(
  "Manifest",
  new ManifestPlugin({
    publicPath: config.publicPath,
    writeToFileEmit: true,
    filter: f => {
      f.name = f.name.replace(/\\/g, "/");
      f.path = f.path.replace(/\\/g, "/");
      return f;
    }
  })
);

module.exports = environment;
