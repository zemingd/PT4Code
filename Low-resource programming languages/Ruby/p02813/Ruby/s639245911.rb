n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

o = [*1..n]
x = y = 0
o.permutation.to_a.sort.each_with_index do |arr, i|
  if arr == a
    x = i + 1
  end
  if arr == b
    y = i + 1
  end
end

p (x - y).abs