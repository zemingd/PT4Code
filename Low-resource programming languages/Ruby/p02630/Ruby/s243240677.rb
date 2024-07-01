n = gets.to_i
a = gets.chomp.split.map(&:to_i)
q = gets.to_i
b = []
c = []
[*0..q-1].each_with_index do |k|
  bb, cc = gets.chomp.split.map(&:to_i)
  b << bb
  c << cc
end

# p b, c

[*0..q-1].each_with_index do |i|
  a.select.with_index{|x, m| a[m] = c[i] if x == b[i] }
  puts a.sum
end