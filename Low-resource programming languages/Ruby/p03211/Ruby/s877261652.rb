s = gets.chomp
min_d = 1000
for i in 0..(s.length - 3) do
  d = (s.slice(i, 3).to_i - 753).abs
  min_d = d if min_d > d
end
puts min_d
