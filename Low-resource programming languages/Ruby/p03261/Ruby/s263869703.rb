n = gets.to_i
words = n.times.map { gets }
if words.uniq.size != words.size
  puts "No"
  exit
end

flag = true
(n-1).times do |i|
  if words[i][-1] != words[i+1][0]
    flag = false
    break
  end
end

puts flag ? "YES" : "No"