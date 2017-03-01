class Seducente

	def initialize(bot)
		@bot = bot
	end

	def ti_impicci?(command)
		/seduci/i.match?command
	end

	def rispondi(reply,message)
		groups=message.text.scan(/seduci (.*)/i)[0]
		aggettivi=["bella puledra","turbofregna","cofana","idrovora"]
		reply.text="Avrei proprio voglia di una #{aggettivi.sample} come te #{groups.first}"
		reply.send_with(@bot)
	end


end