def search(p, l, r)
  if l % p == 0
    return true
  else
    x = (l / p) * p + p
    return (x <= r) ? true : false
  end
end

l, r = gets.split.map(&:to_i)
if search(2019, l, r)
  puts 0
elsif search(3, l, r) && search(673, l, r)
  puts 0
else
  min = 2019
  for i in l..(r-1) do
    for j in (i+1)..r do
      res = i * j % 2019
      min = res if res < min
    end
  end
  puts min
end
