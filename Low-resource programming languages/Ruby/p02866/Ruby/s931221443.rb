N = gets.chomp.to_i
D = gets.chomp.split(" ").map(&:to_i)

if D[0] != 0 || D[1..-1].include?(0) then
  puts "0"
  exit
end

ranks = []
i = 1
D.each do |n|
  rank = ranks[n] || 0
  ranks[n] = rank + 1
end

if ranks.include?(nil) then
  puts "0"
  exit
end

s = 1
pr = 1
ranks.each do |r|
  s *= pr ** r
  pr = r
end

puts s % 998244353