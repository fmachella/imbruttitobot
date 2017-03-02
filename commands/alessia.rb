class Alessia
# 	@Juliethadagun

	def initialize(bot)
		@bot = bot
	end

	def ti_impicci?(command)
		/@fmachella/i.match?command
	end

	def rispondi(reply, message)
		p 'trovato'
	end


end