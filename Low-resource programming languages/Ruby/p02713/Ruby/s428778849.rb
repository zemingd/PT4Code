k = gets.chomp.to_i
ans = 0
kari = 0
1.step(k) do |a|
  1.step(k) do |b|
    1.step(k) do |c|
      kari = a.gcd(b)
      kari = kari.gcd(c)
      ans += kari
    end
  end
end

puts ans