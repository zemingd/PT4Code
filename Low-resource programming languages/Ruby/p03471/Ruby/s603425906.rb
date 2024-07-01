N, Y = gets.chomp.split.map(&:to_i)
ans = "-1 -1 -1"

for i in 0..N do
  is_break = false
  for j in 0..(N - i) do
    k = N - i - j
    if 10000 * i + 5000 * j + 1000 * k == Y then
      ans = "#{i} #{j} #{k}"
      is_break = true
      break
    end
  end
  break if is_break
end

puts ans
