n = gets.to_i
words = []
n.times do
  words << gets.to_s
end
puts "No" && exit if words.size != words.uniq.size
result = true
words.size.times do |i|
  next if i == 0
  result = false if words[i-1][-2] != words[i][0]
end
puts result ? "Yes" : "No"
