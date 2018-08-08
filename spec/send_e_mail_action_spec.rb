
describe Fastlane::Actions::SendEMailAction do
  let(:action) { Fastlane::Actions::SendEMailAction }
  describe '#send_e_mail' do
  	let(:stmpserver) {'smtp.yeah.net'}
    let(:userName) { 'xyhuangjia@yeah.net' }
    let(:password) { 'HJ123456' }
    let(:recipients) { '2587171762@qq.com' }
    let(:subject) { 'test' }
    let(:message_body) { 'token_or_password' }
    before do
      
    end

    it 'send_e_mail_text' do
     	 action.run(params2)
    end
  end
end
