
describe Fastlane::Actions::SendEMailAction do
  let(:action) { Fastlane::Actions::SendEMailAction }
  describe '#send_e_mail' do
    params = { "stmpserver" => "smtp.yeah.net", "userName" => "xyhuangjia@yeah.net", "password" => "password", "recipients" => ["2587171762@qq.com", "2587171762@qq.com"], "subject" => "test", "message_body" => "text" }
    it 'send_e_mail_text' do
      @params = params
      puts(params)
      puts("#{params["recipients"]}")
      puts params["recipients"]
      puts params[:recipients]
      # action.run(params)
      # action.send_emails(params);
    end
  end
end
