alphabet = "a".."z"
input = gets.chomp
alphabet.each_with_index do |item, i|
  cnt = input.count(item) + input.count(item.upcase)
  puts item + " : " + cnt.to_s
end