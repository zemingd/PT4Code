N = gets.chomp.to_i
raw_as = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
Bs = []
Cs = []
ss = []
Q.times do
  b, c= gets.chomp.split
  Bs << b; Cs << c
end

a_sum = raw_as.sum
as = {}
raw_as.each do |a|
  as[a] ||= 0
  as[a] += 1
end

Bs.each_with_index do |bi, i|
  ss <<  a_sum + (as[bi].empty? ? 0 : ((Cs[i] - bi) * as[bi]))
end

puts ss

as.map {|a| if }


i = 0
name = ''

while no > 0 do
  div, mod = no.divmod(26)
  if mod.zero?
    div -= 1
    mod = 26
  end
  name = ('a'.ord - 1 + mod).chr + name
  no = div
end
puts name
