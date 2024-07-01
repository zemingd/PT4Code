# abc150 C
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)


ai = 0
bi = 0
(1..n).to_a.permutation(n).to_a.each_with_index do |arr, ind|
  ai = ind if arr == a
  bi = ind if arr == b
end
p (bi - ai).abs

