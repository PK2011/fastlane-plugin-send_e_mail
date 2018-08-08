describe Fastlane::Actions::SendEMailAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The send_e_mail plugin is working!")

      Fastlane::Actions::SendEMailAction.run(nil)
    end
  end
end
