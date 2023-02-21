# automated_versioning plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-automated_versioning)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-automated_versioning`, add it to your project by running:

```bash
fastlane add_plugin automated_versioning
```

## About automated_versioning

A simple fastlane plugin to help automate versioning of mobile applications


Maintaining the versioning of your mobile application is an important key indicator showing the chronological evolution of your project, however sometimes it can happen that before a release the `build_number` or `code_version` has been incorrectly entered...

The goal of this plugin is to help you automate the process of versioning so you don't have to worry about it and you can focus on your project.

### Versioning schemes supported

- Sementic versioning

  - `generated_build_number`: `build_number` and `code_version` are generated according to the `version` number
  - `auto_increment`: the `build_number` and `code_version` will start from 0 and will be auto incremented

- Date of Release

Feel free to send me a message if you find other versioning schemes that we could support in this plugin 😃

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

A complete example of integration is available on this [link](https://github.com/Vikmanatus/fastlane-versioning-example)

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use

```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
