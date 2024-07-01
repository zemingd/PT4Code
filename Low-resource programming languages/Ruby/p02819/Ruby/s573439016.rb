x = gets.to_i


def prime (n)
  return true if n == 2
  lim = Math.sqrt(n).ceil
  (2..lim).each do |i|
    return false if n % i == 0
  end
  true
end

if x == 2
  puts x
  exit 0
end

x += 1 if x % 2 == 0
while true do
  break if prime (x)
  x +=2
end

puts x