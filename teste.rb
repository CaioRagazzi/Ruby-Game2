def palavra_mascarada(chutes, palavra_mascarada)
    mascara = ""
    for i in palavra_mascarada.chars
        if chutes.include? i
            mascara += i
        else
            mascara += "_"
        end
    end
    mascara
end

palavra_mascarada = "aline"

chutes = []

a = gets.strip

chutes << a

mascara = palavra_mascarada chutes, palavra_mascarada
puts "#{mascara}"