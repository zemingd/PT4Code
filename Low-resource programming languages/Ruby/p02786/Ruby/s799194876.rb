H = gets.to_i

i = 1
until H >= 2 ** (i - 1) && H < 2 ** i do
  i += 1
end

ans = 2 ** i - 1

puts ans
