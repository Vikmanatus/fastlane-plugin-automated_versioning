require "fastlane_core/ui/ui"
require_relative '../files/files_helper'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?(:UI)

  module Helper
    class ConfigurationHelper
      def self.check_versioning_config_file
        UI.message("Going to check if versioning file exists")
        files_helper = Helper::FilesHelper
        is_file_created = files_helper.check_file_existence(file_path: "./versioning.conf.json")
        UI.message("File exists ? #{is_file_created}")
        if !is_file_created
          UI.message("Let's go to create your file !")
          UI.message("\n")
          UI.message("The first step is to choose what type of versioning you will want to use")
          UI.message("At this point we support three scheemes of versioning")
          UI.message("\n")
          UI.message("1. Generated build number: This scheeme will generate the version code and code version according to the version number")
          UI.message("For example, if you are going to release the version 1.0.1 your build number and code version will be 1000100")
          UI.message("\n")
          UI.message("2. Auto-increment: this scheme will generate the version code and code version starting from 0 and will be resetted when requested")
          UI.message("\n")
          UI.message("3. Date of release: this scheme will generate the version code and code version according to the date")
          UI.message("For example, if you are doing a release on 23/02/2022, the version number will be 2022.02.23 and your version code will be 220223")
          UI.message("\n")
          UI.important("What type of versioning do you want to choose ?")
          project = UI.select("What will you choose ? ", ["generated_build_number", "auto_increment", "date_of_release"])
          UI.success("Okay, you selected '#{project}'")
        end
      end
    end
  end
end
