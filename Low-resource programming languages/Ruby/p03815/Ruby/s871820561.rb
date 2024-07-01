x = gets.to_i
r = x % 11

answer = 0

if x < 11
  if x < 7
    answer = 1
  else
    answer = 2
  end
elsif r == 0
  answer = x / 11 * 2
elsif r < 7
  answer = x / 11 * 2 + 1
else
  answer = x / 11 * 2 + 2
end

puts answer