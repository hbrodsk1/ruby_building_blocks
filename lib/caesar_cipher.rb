require 'sinatra'
require 'sinatra/reloader'


get '/caesar_cipher' do
	word = params['word']
	num = params['num'].to_i
	color = word == "" ? 'white' : 'green'
	cipherize = cipher(word, num)
	erb :index, :locals => {:word => word, :num => num, :color => color, :cipherize => cipherize}
end

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

#puts cipher("Apples? and Oranges!!!!!!", 5)