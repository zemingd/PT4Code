n = gets.to_i
q = gets.chomp.split.map(&:to_i)
r = gets.chomp.split.map(&:to_i)
a = 0
b = 0
f = (1..n).to_a.permutation(n).to_a
f.each_with_index do |v,i|
  if v == q
    a = i
  end
  if v == r
    b = i
  end

end
puts (a - b).abs