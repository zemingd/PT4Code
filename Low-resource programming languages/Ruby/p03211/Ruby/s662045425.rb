s = gets.chomp
min = 1000

for i in (0...s.size-2) do
  if (753-s[i..i+2].to_i).abs < min
      min = (753-s[i..i+2].to_i).abs
  end
end

puts min