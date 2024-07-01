n = gets.to_i
words = readlines.map(&:chomp)
if words.size == words.uniq.size
  count = 0
  (n-1).times do |i|
    count += 1 if words[i][-1] == words[i+1][0]
  end
  if count == 0
    puts "No"
  else
    puts "Yes"
  end
else
  puts "No"
end
