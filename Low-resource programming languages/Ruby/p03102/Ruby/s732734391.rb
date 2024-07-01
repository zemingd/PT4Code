n, m, c = gets.chomp.split.map(&:to_i)

b = gets.chomp.split.map(&:to_i)
ans = 0

n.times do
  a = gets.chomp.split.map(&:to_i)
  ab = 0
  
  i = 0
  m.times do
    ab += a[i] * b[i]
    i += 1
  end
  
  if ab + c > 0
    ans += 1
  end
end

puts ans