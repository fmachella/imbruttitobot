class Insulti

	def initialize(bot)
		@bot = bot
		@saluti=inizializza_saluti
	end

	def ti_impicci?(command)
		/ciao/i.match?command
	end

	def rispondi(reply)
		reply.text=@saluti.sample
		reply.send_with(@bot)
	end

	def inizializza_saluti
		risposte=[]
		risposte<<'Ciao, sono mandingo e nel culo te lo spingo.'
		risposte<<'Ci stai provando con me?'
		risposte<<'Non te lo do così facilmente'
		risposte
	end

end