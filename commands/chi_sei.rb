class ChiSei
	def initialize(bot)
		@bot = bot
	end

	def ti_impicci?(command)
		/chi/i.match?command and /è/i.match?command and /scassa/i.match?command
	end

	def rispondi(reply)
		reply.text='Il cazzo che te se frega!'
		reply.send_with(@bot)
	end

end