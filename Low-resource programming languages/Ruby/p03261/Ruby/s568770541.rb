n = gets.to_i
words = n.times.map { gets.to_i }

puts "No" if words.uniq.size != words.size

flag = true
(n-1).times do |i|
  if words[i][-1] != words[i+1][0]
    flag = false
    break
  end
end

puts "No" unless flag

puts "Yes"