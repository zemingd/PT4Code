gets
a = gets.strip.split(" ").map(&:to_i)

if a.size == 1
  puts a.first
else
  all = a.first
  1.upto(a.size - 1) do |i|
    all = all.gcd(a[i])
  end

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
    x = i > 0 ? l[i - 1] : nil
    y = i < a.size ? r[i + 1] : nil

    ans = 
      if x && y
        [ans, x.gcd(y)].max
      else
        [ans, (x || y)].max
      end
  end

  puts [ans, all].max
end
