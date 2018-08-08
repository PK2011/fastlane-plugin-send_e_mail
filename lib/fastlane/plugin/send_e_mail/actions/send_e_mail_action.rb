
require 'fastlane/action'
require_relative '../helper/send_e_mail_helper'

module Fastlane
  module Actions
    class SendEMailAction < Action
      def self.run(params)
        UI.message("The send_e_mail plugin is working!")
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
          FastlaneCore::ConfigItem.new(key: :stmpServer,
                                  env_name: "SEND_E_MAIL_YOUR_OPTION",
                               description: "A description of your option",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :userName,
                                  env_name: "SEND_E_MAIL_YOUR_OPTION",
                               description: "A description of your option",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :password,
                                  env_name: "SEND_E_MAIL_YOUR_OPTION",
                               description: "A description of your option",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :recipients,
                                env_name: "SEND_E_MAIL_YOUR_OPTION",
                             description: "A description of your option",
                                optional: false,
                                    type: String),

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
          # attachment
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
        true
      end
    end
  end
end
