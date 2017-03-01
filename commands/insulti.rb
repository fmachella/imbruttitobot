class Insulti

	def initialize(bot)
		@bot = bot
	end

	def ti_impicci?(command)
		/ciao/i.match?command
	end

	def rispondi(reply)
		reply.text='Ciao, sono mandingo e nel culo te lo spingo!'
		reply.send_with(@bot)
	end


end