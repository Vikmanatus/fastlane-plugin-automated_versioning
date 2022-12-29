require "spec_helper"

# This file contains all the tests of the fuctions in the FilesHelper class
describe Fastlane::Helper::FilesHelper do
  describe "#check_file_existence" do
    it "checks file existence" do
      files_helper = Fastlane::Helper::FilesHelper
      file_check = files_helper.check_file_existence(file_path: "./versioning.conf.json")
      expect(file_check).to eq(false)
    end
  end
end
