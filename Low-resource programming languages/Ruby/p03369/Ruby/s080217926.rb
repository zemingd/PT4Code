input = gets.chomp

ans = 700
input.chars do |c|
  ans += 100 if c == 'o'
end

puts ans
