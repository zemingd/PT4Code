n = gets.to_i
as = n.times.map { gets.to_i }

a = as[0]
ans = 1
valid = false

n.times do
  if a == 2
    valid = true
    break
  end

  a = as[a - 1]
  ans += 1
end

puts valid ? ans : -1
