h, a = gets.strip.split(' ').map(&:to_i)

answer = if h % a == 0
  h / a
else
  h / a + 1
end

puts answer