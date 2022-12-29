require "fastlane_core/ui/ui"
require_relative '../files/files_helper'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?(:UI)

  module Helper
    class VersioningHelper
      def self.check_versioning_config_file
        UI.message("Going to check if versioning file exists")
        files_helper = Helper::FilesHelper
        is_conf_file = files_helper.check_file_existence(file_path: "./versioning.conf.json")
        UI.message("File exists ? #{is_conf_file}")
      end
    end
  end
end
