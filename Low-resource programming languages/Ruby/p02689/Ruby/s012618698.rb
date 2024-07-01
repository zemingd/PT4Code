n, m = gets.chomp.split(" ").map(&:to_i);
h = gets.chomp.split(" ").map(&:to_i);

total = n
result = Array.new(n, true)

m.times do
  a, b = gets.chomp.split(" ").map(&:to_i);
  a-=1
  b-=1

  if h[a] == h[b]
    result[a] = false
    result[b] = false
  elsif h[a] < h[b]
    result[a] = false
  elsif h[a] > h[b]
    result[b] = false
  end
end

puts result.count(true)