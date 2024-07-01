N = gets.chomp!.to_i
P = gets.chomp!.split.map(&:to_i)
Q = gets.chomp!.split.map(&:to_i)
a = 0
b = 0

arr = (1..N).to_a.permutation.to_a
arr.each_with_index do |ar, i|
  a = i if ar == P
  b = i if ar == Q
end
puts (a - b).abs