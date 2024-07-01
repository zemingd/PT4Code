alpha = "a".."z"
str = ""
while input = gets
  str += input
end
str.downcase!
alpha.each do |i|
  cnt = str.count(i)
  puts "#{item} : #{cnt}"
end