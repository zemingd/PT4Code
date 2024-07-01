n = gets.chomp.to_i

ans = 0
1.upto(n) do |i|
  next if i.even?

  tmp = 0

  1.upto(i) do |j|
    next if j.even?
    if i%j==0
      tmp += 1
    end
  end

  if tmp == 8
    ans += 1
  end
end

p ans
