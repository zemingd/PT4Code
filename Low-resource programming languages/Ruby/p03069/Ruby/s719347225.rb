N = gets.to_i
s = gets.chomp

num_white = s.count('.')
num_black = 0
ans = num_black + num_white
N.times do |i|
  if s[i] == '#'
    num_black += 1
  else
    num_white -= 1
  end
  ans = [ans, num_black + num_white].min
end
puts ans