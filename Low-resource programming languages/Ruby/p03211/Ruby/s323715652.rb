S = gets.chomp
min = 999
(S.size-2).times do |i|
  min = [min, (753-S[i..i+2].to_i).abs].min
end
p min