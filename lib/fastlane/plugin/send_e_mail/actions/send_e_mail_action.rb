
# -*- coding: UTF-8 -*-
require 'fastlane/action'
require_relative '../helper/send_e_mail_helper'
require 'net/smtp'

module Fastlane
  module Actions
    class SendEMailAction < Action
      def self.send_emails(stmpserver, sender_address, password, recipients, subject, message_body)
        recipients.each do |recipient_address|
          message_header = ''
          message_header << "From: <#{sender_address}>\r\n"
          message_header << "To: <#{recipient_address}>\r\n"
          message_header << "Subject: #{subject}\r\n"
          message_header << "Date: " + Time.now.to_s + "\r\n"
          message = message_header + "\r\n" + message_body + "\r\n"
          Net::SMTP.start(stmpserver, 25, "localhost", sender_address, password, :plain) do |smtp|
            # begin
            smtp.send_message(message, sender_address, recipient_address)
            # rescue
            #   raise FileSaveError, $!
            # end
          end
          
        end
      end

      def self.run(params)
        # @params = params
        # UI.message("The send_e_mail plugin is working!")
        # self.send_emails(params[:stmpServer], params[:userName], params[:password], @params[:recipients], params[:subject], params[:message_body])
        self.send_emails(params["stmp_server"], params["user_name"], params["password"], params["recipients"], params["subject"], params["message_body"])
    end

      def self.description
        "a tool to sendmail"
      end

      def self.authors
        ["huangj"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "send email by stmp"
      end

      def self.available_options
        [
          # stmp servername
          FastlaneCore::ConfigItem.new(key: :stmp_server,
                                  env_name: "SEND_E_MAIL_STMP_SERVER",
                               description: "A description of your option",
                                  optional: false,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :user_name,
                                  env_name: "SEND_E_MAIL_USERNAME",
                               description: "A description of USERNAME",
                                  optional: false,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :password,
                                  env_name: "SEND_E_MAIL_PASSWORD",
                               description: "A description of your option",
                                  optional: false,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :recipients,
                                env_name: "SEND_E_MAIL_YOUR_OPTION",
                             description: "A description of your option",
                                optional: false,
                                    type: Array),
          FastlaneCore::ConfigItem.new(key: :subject,
                                env_name: "SEND_E_MAIL_YOUR_OPTION",
                             description: "A description of your option",
                                optional: true,
                                    type: String),
          FastlaneCore::ConfigItem.new(key: :message_body,
                                env_name: "SEND_E_MAIL_YOUR_OPTION",
                             description: "A description of your option",
                                optional: true,
                                    type: String),
          FastlaneCore::ConfigItem.new(key: :attachment,
                                env_name: "SEND_E_MAIL_YOUR_OPTION",
                             description: "A description of your option",
                                optional: true,
                                    type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        [:ios, :mac].include?(platform)
        true
      end
    end
  end
end
