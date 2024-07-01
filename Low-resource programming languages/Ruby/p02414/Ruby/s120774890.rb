require 'matrix'

n, m, l = gets.chomp.split(" ").map(&:to_i)
tmp_a = []
tmp_b = []
n.times do |i|
  tmp_a.push gets.chomp.split(" ").map(&:to_i)
end
m.times do |i|
  tmp_b.push gets.chomp.split(" ").map(&:to_i)
end
a = Matrix.rows(tmp_a)
b = Matrix.rows(tmp_b)
(a * b).to_a.each do |line|
  puts line.join(" ")
end