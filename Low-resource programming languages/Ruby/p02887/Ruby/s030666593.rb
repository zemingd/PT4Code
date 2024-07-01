_N = gets.chomp.to_i
string = gets.chomp

ans = 0
be = ''
string.chars do |c|
  next if c == be
  ans += 1
  be = c
end

puts ans