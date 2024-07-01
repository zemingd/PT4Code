n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
check = Array.new(n, true)

m.times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  if h[a] > h[b]
    check[b] = false
  elsif h[a] < h[b]
    check[a] = false
  else
    check[a] = false
    check[b] = false
  end
end

puts check.filter { |i| i == true }.length
