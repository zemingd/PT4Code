S = gets.chomp

diff_min = 9999999999
for i in 0..(S.length - 3)
  diff = [(753 - S[i..(i+2)].to_i).abs, (S[i..(i+2)].to_i - 753).abs].min
  diff_min = diff if diff < diff_min
end
puts diff_min
