alpha = ("a".."z").to_a
str = ""
while input = gets
  input.strip!
  str += input
  p str
end
str.downcase!
alpha.each do |i|
  cnt = str.count(i)
  puts "#{i} : #{cnt}"
end