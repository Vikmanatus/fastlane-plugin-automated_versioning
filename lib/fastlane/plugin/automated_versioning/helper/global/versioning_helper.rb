require "fastlane_core/ui/ui"

module Fastlane
  # UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class VersioningHelper
      def self.check_versioning_config_file
        UI.message("Going to check if versioning file exists")
      end
    end
  end
end
