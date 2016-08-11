def cipher(word, num)
alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
new_word = ""

word.each_char do |i|
  if !alphabet.include?(i)
    new_word +=i
  elsif
  	i == i.upcase
    new_word += alphabet[alphabet.index(i) - num].upcase
  else
    new_word += alphabet[alphabet.index(i) - num].downcase
  end
end

return new_word
end

puts cipher("Apples? and Oranges!!!!!!", 5)