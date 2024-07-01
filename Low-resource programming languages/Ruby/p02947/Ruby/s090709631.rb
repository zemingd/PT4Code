n = gets.to_i
ss = n.times.map { gets.chomp }

ans = 0
hash = Hash.new(-1)
ss.each do |s|
  s = s.chars.sort!.join
  hash[s] += 1
  ans += hash[s]
end

puts ans
