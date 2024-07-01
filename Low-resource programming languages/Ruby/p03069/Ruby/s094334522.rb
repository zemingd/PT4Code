# https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_c

n = gets.to_i
stones = gets.chomp.chars
orig_stones = stones.dup

black_res = 0
white_res = 0
blacked = false
stones.each do |c|
  black_res += 1 if blacked && c == '.'
  blacked = true if c == '#' && !blacked
end

stones = orig_stones
whited = false
stones.each do |c|
  white_res += 1 if whited && c == '#'
  whited = true if c == '.' && !whited
end
puts [black_res, white_res].min
