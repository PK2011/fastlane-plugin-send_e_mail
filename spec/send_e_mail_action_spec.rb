describe Fastlane::Actions::SendEMailAction do
  let(:action) { Fastlane::Actions::SendEMailAction }
  describe '# send_e_mail' do
    it 'send_e_mail_text' do        
        action.run(
                stmp_server: "smtp.yeah.net", 
                user_name: "xyhuangjia@yeah.net", 
                password: "HJ123456", 
                recipients: ["2587171762@qq.com", "1593033769@qq.com"], 
                subject: "测试标题", 
                message_body: "测试文本"
            )
    end
  end
end
