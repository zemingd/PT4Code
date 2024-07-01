n = gets.to_i
words = readlines.map(&:chomp)
count = 0
(n-1).times do |i|
  count += 1 if words[i][-1] != words[i+1][0]
end

puts (count == 0) && (n == words.uniq.size) ? "Yes" : "No"

