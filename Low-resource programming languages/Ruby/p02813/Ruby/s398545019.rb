n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

arr = [*1..n]

a = 0
b = 0

arr.permutation.to_a.each_with_index do |val, idx|
  a = idx + 1 if val == p
  b = idx + 1 if val == q
end
p (a - b).abs

