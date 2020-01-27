def caesar_cipher string, num
  #Crea un array con todas las letras
  letras = []
  ('a'..'z').each { |x| letras.push x }
  letras.length

  #Crea un array para recordar las mayusculas
  mayus = []
  string.length.times do |i|
    mayus.push string[i] == string[i].downcase ? 0 : 1
  end

  #Convierte el string a letras minúsculas
  string.downcase!

  #Aplica el algoritmo caesar
  string.length.times do |i|
    if letras.member? string[i]
      string[i] = letras.index(string[i]) + num > 25 ?
        letras[letras.index(string[i]) + num -26] :
        letras[letras.index(string[i]) + num]
    end
  end

  #Reestablece mayúsculas
  string.length.times do |i|
    string[i] = mayus[i] == 0 ? string[i] : string[i].upcase
  end

  string
end

puts caesar_cipher("What a string!", 5)
gets