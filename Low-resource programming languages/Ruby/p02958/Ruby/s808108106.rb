N = gets.to_i
Pn = gets.split.map(&:to_i)
k = 0

N.times do |i|
  next if Pn[i] == i + 1
  k += 1
end

puts (k == 0) || (k == 2) ? 'YES' : 'NO'
