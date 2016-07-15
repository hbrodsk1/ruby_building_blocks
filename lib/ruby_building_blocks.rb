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

=begin
def caesar_cipher(string, shift=1)
ascii = string.chars.map { |x| x.ord }
shifted = ascii.map { |y| y + shift }
print shifted.map { |new_letter| new_letter.chr }.join

end

caesar_cipher("Hello hey", 2)
=end
=begin
def caesar_cipher(string, num=1)
	new_string = string.split(" ")
	if new_string.length > 1
		new_string.each do |word|
			caesar_cipher(word, num)
		end
	else
		new_string = string.split("")
		new_string.each do |p|
			print num.times.inject(p) { |m| m.next}
		end
	end
end
=end

=begin
def caesar_cipher(string, num=1)
	string.chars.to_a.each do |p|
		y = num.times.inject(p) { |m| m.next}
		puts y
		end
end
=end

=begin
def caesar_cipher(string, num=1)
	upcase_letters = ("A".."Z").to_a
	downcase_letters = ("a".."z").to_a
	converted_word = []
	string.split(" ").each do |word|
		word.split("").each do |p|
			if p == p.upcase
				y = upcase_letters.index(p) + num
				if y > 25
					y -= 26
					converted_word << upcase_letters[y]
				else
					converted_word << upcase_letters[y]
				end
			elsif p == p.downcase
				y = downcase_letters.index(p) + num
				if y > 25
					y -= 26
					converted_word << downcase_letters[y]
				else
					converted_word << downcase_letters[y]
				end
			elsif p == " "
				y = 4
				converted_word << y
			end
		end
	end
	print converted_word
end
caesar_cipher("oAzZ op io", 2)
=end
=begin
def caesar_cipher(string, num=1)
	letters = ("A".."z").to_a
	numbers = (0..50).to_a
	puts string.tr('A-z', 'd-z')
end	
caesar_cipher("sTrinG doodle", 4)
=end

=begin
def stock_picker(arr)
	start = 0
	best_return = arr[1] - arr[0]
		while start < arr.length do
			after = start + 1
			while after < arr.length do
				if arr[after] - arr[start] > best_return
					day_index = [start, after]
					best_return = arr[after] - arr[start]
				end
				after += 1
			end
			start += 1
		end
	print day_index
end

stock_picker([17,3,6,9,15,8,6,1,10])
=end

=begin
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","be"]

def substring(word, dictionary)
	count = Hash.new(0)
	word.downcase.split(" ").each do |y|
	dictionary.each do |k|
		if y.include?(k)
			count[k] += 1
		end
	end
end
	print count
end

substring("Howdy partner, sit down! How's it going?", dictionary)
=end


















