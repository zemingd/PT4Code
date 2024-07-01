N = gets.to_i
A = gets.split.map(&:to_i)
B = Hash.new(0)
total = 0
A.each do |a|
  B[a] += 1
  total += a
end
gets.to_i.times do
  x,y = gets.split.map(&:to_i)
  if B[x] != 0
    total = total - x * B[x] + y * B[x]
    B[y] += B[x]
    B[x] = 0
  end
  puts total
end
