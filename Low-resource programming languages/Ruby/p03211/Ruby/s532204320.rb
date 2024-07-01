S = gets.chomp
l = S.length
dif = []
(l - 2).times do |i|
  n = S[i..(i + 2)].to_i
  dif.push((n - 753).abs)
end

puts dif.min