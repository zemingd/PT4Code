min = 100010
all = 0

n, x = gets.chomp.split(" ").map(&:to_i)
n.times do
  m = gets.to_i
  if m<min
    min = m; end
  all += m;
end
puts (x-all)/min+n
