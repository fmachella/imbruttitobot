require 'telegram_bot'
Dir[File.expand_path 'commands/**/*.rb'].each { |f| require_relative(f) }
# 337450767:AAEGW0wKqELm_nnztt0mcWWPit-as9VtNG8 molestobot
# 344707079:AAHSu8N5ibfJTsougIE-9-4UeTVZZ9DSWuM imbruttito
bot = TelegramBot.new(token: '337450767:AAEGW0wKqELm_nnztt0mcWWPit-as9VtNG8')

risponditori = []
risponditori<<Insulti.new(bot)
risponditori<<CosaFate.new(bot)
risponditori<<ChiSei.new(bot)
risponditori<<Seducente.new(bot)
# risponditori<<Alessia.new(bot)
bot.get_updates(fail_silently: false) do |message|
	puts "@#{message.from.username}: #{message.text}"
	command = message.get_command_for(bot)

	message.reply do |reply|
		risponditori.each do |risp|
			risp.rispondi(reply,message) if risp.ti_impicci?command
		end
	end
end