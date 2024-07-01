N = gets.to_i
as = Array.new(N) { gets.to_i }

i = 1
ans = 0
until i == 2 || i.zero?
  ans += 1
  i2 = as[i - 1]
  as[i - 1] = 0
  i = i2
end

puts i == 2 ? ans : -1
