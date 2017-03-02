class CosaFate

	def initialize(bot)
		@bot = bot
	end

	def ti_impicci?(command)
		/cosa/i.match?command and /fate/i.match?command and /\?/i.match?command
	end

	def rispondi(reply, message)
		reply.text='Una ceppa di cazzo, vabbene?'
		reply.send_with(@bot)
	end

end