n = gets.chomp.to_i
raw_as = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
bs = []
cs = []
ss = []
Q.times do
  b, c= gets.chomp.split.map(&:to_i)
  bs << b; cs << c
end

a_sum = raw_as.inject(:+)
as = {}
raw_as.each do |a|
  as[a] ||= 0
  as[a] += 1
end

  puts "arr: #{as}"
bs.each_with_index do |bi, i|
  puts "#{bi} => #{cs[i]}, #{as[bi].nil?}"
  puts "::(#{cs[i]} - #{bi}) * #{as[bi]}"
  a_sum += as[bi].nil? ? 0 : ((cs[i] - bi) * as[bi])
  ss <<  a_sum
  as[cs[i]] ||= 0
  as[cs[i]] += as[bi]
  as[bi] = 0
  puts "arr: #{as}"
  puts "as[cs[i]]:#{as[cs[i]]}, as[bi]: #{as[bi]}"
end

puts ss
