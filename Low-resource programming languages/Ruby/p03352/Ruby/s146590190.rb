x = gets.to_i
ans = 1
x.downto(4) do |v|
  b = 2
  while b ** 2 <= v do
    p = 2
    while b ** p <= v do
      if b ** p == v
        ans = v
        break
      end
      p += 1
    end
    break if ans > 1
    b += 1
  end
  break if ans > 1
end
puts ans
