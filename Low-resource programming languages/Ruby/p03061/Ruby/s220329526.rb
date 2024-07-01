gets
a = gets.strip.split(" ").map(&:to_i).sort.reverse

if a.size == 1
  puts a.first
else
  l = Array.new(a.size)
  r = Array.new(a.size)

  l[0] = a.first
  1.upto(a.size - 1) do |i|
    l[i] = a[i].gcd(l[i - 1])
  end

  r[a.size - 1] = a.last
  (a.size - 2).downto(0) do |i|
    r[i] = a[i].gcd(r[i + 1])
  end

  ans = 0
  0.upto(a.size - 1) do |i|
    x = l[i - 1]
    y = r[i + 1]

    ans = 
      if x && y
        [ans, x.gcd(y)].max
      else
        [ans, (x || y)].max
      end
  end

  puts ans
end
