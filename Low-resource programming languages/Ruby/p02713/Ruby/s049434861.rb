k = gets.to_i

n = 0

(1 .. k).each do |i1|
  (1 .. k).each do |i2|
    gn = i1.gcd(i2)
    (1 .. k).each do |i3|
      n += gn.gcd(i3)
    end
  end
end

puts n