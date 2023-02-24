require "fastlane/action"
require_relative "../helper/config/configuration_helper.rb"

module Fastlane
  module Actions
    class VersionApplicationAction < Action
      def self.run(params)
        UI.message("This action will handle the versioning element asked by the user according to his preferences")
      end

      def self.description
        "A simple fastlane plugin to help automate versioning of mobile applications"
      end

      def self.authors
        ["Viktor Stoyanov"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        ""
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :element_required,
                                       env_name: "AUTOMATED_VERSIONING_YOUR_OPTION",
                                       description: "A description of your option",
                                       optional: false,
                                       type: String),
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end