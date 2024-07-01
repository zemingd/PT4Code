n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

i = 0
p_i,q_i = nil,nil
ary = (1..n).to_a.permutation(n)
ary.each_with_index do |item,i|
  p_i = i if item == p
  q_i = i if item == q
end

puts (pi-qi).abs
