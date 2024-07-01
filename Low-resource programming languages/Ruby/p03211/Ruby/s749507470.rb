S = gets.chomp
min = 10 ** 9

(S.length - 2).times do |i|
  min = (S[i, 3].to_i - 753).abs if (S[i, 3].to_i - 753).abs < min
end

puts min