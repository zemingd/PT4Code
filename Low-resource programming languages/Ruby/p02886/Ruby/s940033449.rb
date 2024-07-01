n = gets.chomp.to_i
row = gets.chomp.split.map(&:to_i)
a = 0
b = 1
k = 1
answer = 0
while k < n * (n-1) / 2 do
  while b < n
    answer += row[a] * row[b]
    b += 1
  end
  b = 1 + k
  a += 1
  k += 1
end


puts "#{answer}"