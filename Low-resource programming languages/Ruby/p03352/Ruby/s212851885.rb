x = gets.chomp.to_i

res = []

for i in 1..35 do
  for j in 2..10 do
    n = i ** j
    res << n if n < x
  end
end

ans = -1
res.sort.reverse.each do |r|
  if r <= x
    ans = r
    break
  end
end

puts ans