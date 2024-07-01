N = gets.to_i
ds = gets.chomp.split(' ').map{|n| n.to_i}
i, sum = 0, 0
while i < N - 1 do
  j = i + 1
  while j <= N - 1 do
    sum += ds[i] * ds[j]
    j += 1
  end
  i += 1
end
puts sum