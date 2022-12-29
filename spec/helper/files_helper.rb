describe Fastlane::Helper::FilesHelper do
    describe '#check_file_existence' do
      it 'checks file existence' do
        expect(Fastlane::UI).to receive(:message).with("The automated_versioning plugin is working!")
        Fastlane::Actions::AutomatedVersioningAction.run(nil)
      end
    end
  end