# https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_c

n = gets.to_i
stones = gets.chomp.chars
res = []

total_black = stones.count('#')
total_white = stones.count('.')
left_black = 0
right_white = total_white

stones.each do |c|
  left_black += 1 if c == '#'
  res << [right_white, left_black].max
  right_white -= 1 if c == '.'
end
puts res.min
