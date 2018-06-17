require 'telegram/bot'

token = '<ask for BotFather>'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    when '/money'
      boy.api.send_message(chat_id:message.chat.id, text: "Money? I dont have any money for you!")
    end
  end
end
