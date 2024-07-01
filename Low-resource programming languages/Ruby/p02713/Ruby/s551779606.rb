k = gets.to_i

gcds = []

1.upto(k) do |a|
  1.upto(k) do |b|
    gcds << a.gcd(b)
  end
end

sum = 0

gcds.each do |ab|
  1.upto(k) do |c|
    sum += ab.gcd(c)
  end
end

print sum