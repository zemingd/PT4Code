n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

arr = [*1..n]

i = 0
a = nil
b = nil


arr.permutation.to_a.each do |val|
  a = i if val == p
  b = i if val == q
  i += 1
end
p (a - b).abs

