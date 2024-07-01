N, L = gets.chomp.split.map(&:to_i)
sum = 0
mi = 100 * 200 + 1
for i in 1..N
  sum += L + i - 1
  if mi.abs > (L + i - 1).abs
    mi = L + i - 1
  end
end
puts sum - mi
