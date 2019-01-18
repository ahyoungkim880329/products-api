require 'exception_notification/rails'

require 'exception_notification/sidekiq'

# 定期ジョブ処理の例外を通知
ExceptionNotification.configure do |config|
  # Slackへの通知設定
  # ※課題のため、個人のSlackへ通知するように設定
  config.add_notifier :slack, {
    webhook_url: 'https://hooks.slack.com/services/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',
    channel: '#exceptions',
  }
end
