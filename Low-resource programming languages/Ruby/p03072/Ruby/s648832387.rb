n = gets.chomp.to_i
h = gets.split.map(&:to_i)

ans = 1
max = h[0]

for i in 1..n-1 do
  if h[i] >= max
    max = h[i]
    ans += 1
  end
end

puts ans
