describe Fastlane::Actions::AutomatedVersioningAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The automated_versioning plugin is working!")
      
      Fastlane::Actions::AutomatedVersioningAction.run(nil)
    end
  end
end
