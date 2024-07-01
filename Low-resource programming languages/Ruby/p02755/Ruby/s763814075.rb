A, B = gets.chomp.split.map(&:to_i)

result = -1
for i in (A / 0.08).to_i..((A + 1) / 0.08) do
  if (i * 0.08).floor == A && (i * 0.1).floor == B then
    result = i
    break
  end
end
puts result 