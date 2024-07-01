word_size = gets.split
word_array = []
size = word_size[0].to_i
size.times do
  word_array << gets.chomp
end
ans = ""
word_array.sort.each do |word|
  ans += word
end
puts ans