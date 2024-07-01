alphabet = "a".."z"
str = ""
while input = gets
  str += input
end
alphabet.each do |item|
  cnt = str.count(item) + str.count(item.upcase)
  puts item + " : " + cnt.to_s
end