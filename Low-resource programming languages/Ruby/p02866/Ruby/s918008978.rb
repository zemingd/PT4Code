N = gets.chomp.to_i
D = gets.chomp.split(" ").map(&:to_i)

if D[0] != 0 || D[1..-1].include?(0) then
  puts "0"
  return
end

ranks = []
i = 1
while true
  r = D.count {|n| n == i}
  break if r == 0
  ranks << r
  i += 1
end

s = 1
pr = 1
ranks.each do |r|
  s *= pr ** r
  pr = r
end

puts s % 998244353