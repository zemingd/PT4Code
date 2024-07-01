n = gets.to_i

a = 1
min = 100

while a * a <= n
  if (n % a).zero?
    f = (n / a).to_s.length
    min = f if f < min
  end
  a += 1
end

puts min