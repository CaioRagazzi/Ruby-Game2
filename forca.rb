def da_boas_vindas
	puts "Bem vindo ao jogo da forca"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n"
	puts "Começaremos o jogo para você, #{nome}"
	nome
end

def sorteia_palavra_secreta
	puts "Sorteando a palavra..."
	palavra_secreta = "programador"
	puts "Palavra sorteada... a palavra possui #{palavra_secreta.size} letras."
	palavra_secreta	
end

def pede_um_chute(chutes,erros)
	puts "\n\n\n"
	puts "Erros até agora: #{erros}"
	puts "Chutes até agora: #{chutes}"
	puts "Tente adivinhar uma letra ou a palavra"
	chute = gets.strip
	puts "Será que você acertou? Você chutou #{chute}"
	chute
end

def joga(nome)
	palavra_secreta = sorteia_palavra_secreta

	erros = 0
	chutes = []
	pontos_ate_agora = 0

	while erros < 5
		chute = pede_um_chute chutes,erros
		chutes << chute

		chutou_uma_unica_letra = chute.size == 1
		if chutou_uma_unica_letra
			letra_procurada = chute[0]
			total_encontrado = 0
			for i in 0..(palavra_secreta.size-1)
				if palavra_secreta[i] == letra_procurada
					total_encontrado += 1
				end
			end

			if total_encontrado == 0
				puts "Letra nao encontrada"
				erros += 1
			else
				puts "Letra encontrada #{total_encontrado} vezes"
			end
		else 
			
			acertou = chute == palavra_secreta
			if acertou
				puts "Você acertou!"
				pontos_ate_agora += 100
				break				
			else
				puts "Você errou"
				pontos_ate_agora -= 30
				erros += 1
			end
		end
	end
	puts "Você ganhou #{pontos_ate_agora} pontos"
end

def nao_quer_jogar?
	 puts "Deseja jogar novamente? (S/N)"
	 quero_jogar = gets.strip
	 nao_quero_jogar = quero_jogar.upcase == "N"
end

nome = da_boas_vindas

loop do
	joga nome
	break if nao_quer_jogar?
end