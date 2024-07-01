def gen(n, d, v)
  if d == 0
    return (v.to_i <= n && v.split("").uniq.length == 3) ? 1 : 0
  else
    c = 0
    c += gen(n, d - 1, v + "7")
    c += gen(n, d - 1, v + "5")
    c += gen(n, d - 1, v + "3")
    return c
  end
end

n = gets.to_i
digits = n.to_s.length
count = 0
(3..digits).each do |d|
  count += gen(n, d, "")
end
puts count
