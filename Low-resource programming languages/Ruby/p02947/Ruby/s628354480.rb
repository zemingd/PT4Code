n = gets.to_i
ss = n.times.map { gets.chomp.chars.sort.join }

ans = 0
hash = Hash.new(-1)
ss.each do |s|
  hash[s] += 1
  ans += hash[s]
end

puts ans
