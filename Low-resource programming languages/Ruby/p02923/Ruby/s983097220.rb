n = gets.chomp.to_i
h = gets.chomp.split().map(&:to_i)

ans = 0
current = 0
(n-1).times do |i|
  if h[i] >= h[i+1]
    current += 1
  else
    current = 0
  end

  ans = [ans, current].max
end

puts ans