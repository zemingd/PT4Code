s = gets
min = 753
for i in 0..(s.length - 4) do
  selected = s[i..i+2].to_i
  if (753 - selected).abs < min
    min = (753 - selected).abs
  end
end
puts min