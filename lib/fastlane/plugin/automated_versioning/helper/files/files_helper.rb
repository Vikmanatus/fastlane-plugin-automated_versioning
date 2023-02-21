require "fastlane_core/ui/ui"

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?(:UI)

  module Helper
    class FilesHelper
      def self.write_content_file(content:)
        File.open("./versioning.conf.json", "w") do |file_content|
          file_content.write(JSON.pretty_generate(content))
        end
      end
      def self.check_file_existence(file_path:)
        relative_file_path = File.join(File.expand_path(file_path))
        is_file_created = File.file?(relative_file_path)
        if is_file_created
          return TRUE
        else
          return FALSE
        end
      end
    end
  end
end
