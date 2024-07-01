n = gets.chomp.to_i

ans = 0

1.upto(n) do |i|
  next if i.even?
  d = 0
  1.upto(i) do |j|
    if i % j == 0
      d += 1
    end
  end
  if d == 8
    ans += 1
  end
end
puts ans