describe Fastlane::Actions::SendEMailAction do
  let(:action) { Fastlane::Actions::SendEMailAction }
    describe '# send_e_mail' do
      it 'send_e_mail_text' do        
        action.run(
                    stmp_server: "smtp.yeah.net", 
                    user_name: "xyhuangjia@yeah.net", 
                    password: "HJ123456", 
                    recipients: ["huangjia@hzzh.com"], 
                    subject: "云电工app上线完成", 
                    message_body: "但是风很舒服很看好警方还将扩大双方快手快脚饭后立刻收到回复哈 沙发上方粉红色 啥发生的范德萨复活节快乐圣诞快乐恢复健康利害得失艰苦奋斗很舒服很懂事开放后端上回复大煞风景活动时间发货的监考老师复活节快乐的时空裂痕就放寒假快乐的时刻就恢复健康后的森林防火监控和监考老师",
                    # attachment: "附件名字",
                    # target: "app name"
                )
      end
  end
end
