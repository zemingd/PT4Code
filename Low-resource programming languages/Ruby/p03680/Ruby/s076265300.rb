n = gets.to_i
an = n.times.map { gets.to_i }

ans = 1
pressed = [an[0]]
a = an[an[0] - 1]

n.times do
  break if pressed.include?(2)

  if pressed.include?(a)
    ans = -1
    break
  end

  pressed << a
  ans += 1
  a = an[a - 1]
end

puts ans
