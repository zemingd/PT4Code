k = gets.to_i
s = 0
1.upto(k) do |a|
  1.upto(k) do |b|
    1.upto(k) do |c|
      s += a.gcd(b).gcd(c)
    end
  end
end
p s
