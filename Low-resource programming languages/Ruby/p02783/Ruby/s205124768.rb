h, a = gets.split.map &:to_i

result = h / a
result += 1 if h % a > 0

puts result