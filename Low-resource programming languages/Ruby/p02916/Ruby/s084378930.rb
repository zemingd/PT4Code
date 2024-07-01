n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
b = gets.chop.split.map(&:to_i)
c = gets.chop.split.map(&:to_i)


ans = 0
pre = n

a.each do |elem|
  ans += b[elem - 1]

  if elem - 1 == pre
    ans += c[elem-2]
  end

  pre = elem
end

print ans
