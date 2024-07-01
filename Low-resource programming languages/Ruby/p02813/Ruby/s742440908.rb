n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

i = 0
a = nil
b = nil


(1..n).to_a.permutation(n) do |val|
  a = i if val == p
  b = i if val == q
  i += 1
end
p (a - b).abs