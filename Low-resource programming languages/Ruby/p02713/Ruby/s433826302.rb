k = gets.to_i
ans = 0

1.upto(k) |a|
  1.upto(k) |b|
    1.upto(k) |c|
       ans += a.gcd(b).gcd(c)
    end
  end
end

puts ans