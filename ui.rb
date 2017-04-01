def avisa_campeao_atual(dados)
	puts "O nosso campeao atual é #{dados[0]} com #{dados[1]} pontos"
end

def avisa_pontos_totais(pontos_totais)
	puts "Voce possui #{pontos_totais} pontos"
end
def cabecalho_de_tentativa(chutes, erros, mascara)
    puts "\n\n\n\n"
    puts "Palavra secreta: #{mascara}"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
end

def avisa_pontos (pontos_ate_agora)
	puts "Você ganhou #{pontos_ate_agora} pontos"
end

def avisa_errou
	puts "Você errou"
end

def avisa_acertou
	puts "Você acertou!"
end

def avisa_letra_encontrada (total_encontrado)
	puts "Letra encontrada #{total_encontrado} vezes"
end

def avisa_letra_nao_encontrada
	puts "Letra nao encontrada"
end

def avisa_chute_repetido (chute)
	puts "Você já chutou #{chute}"
end

def da_boas_vindas
	puts "Bem vindo ao jogo da forca"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n"
	puts "Começaremos o jogo para você, #{nome}"
	nome
end

def avisa_escolhendo_palavra
	puts "Escolhendo uma palavra"
end

def avisa_palavra_escolhida(palavra_secreta)
	puts "Palavra sorteada... a palavra possui #{palavra_secreta.size} letras."
	palavra_secreta
end

def pede_um_chute
    puts "Entre com a letra ou palavra"
    chute = gets.strip.downcase
    puts "Será que acertou? Você chutou #{chute}"
    chute
end


def nao_quer_jogar?
	 puts "Deseja jogar novamente? (S/N)"
	 quero_jogar = gets.strip
	 nao_quero_jogar = quero_jogar.upcase == "N"
end