n, s = STDIN.map(&:chomp)
n = n.to_i
as = s.split(" ").map(&:to_i).map.with_index.to_a

b1 = []
b2 = []
while ! as.empty? do
  ai, *as = as
  a, i = ai
  if i % 2 == 0 then
    b1.unshift(a)
  else
    b2.push(a)
  end
end

if n % 2 == 0 then
  puts (b1 + b2).reverse.join(" ")
else
  puts (b1 + b2).join(" ")
end
