n = gets.to_i
an = n.times.map { gets.to_i }

ans = 1
pressed = [an[0]]
a = an[an[0] - 1]

n.times do |i|
  ans += 1
  break if a == 2

  pressed << a
  a = an[a - 1]

  if i == n - 1
    ans = -1
    break
  end
end

puts ans
