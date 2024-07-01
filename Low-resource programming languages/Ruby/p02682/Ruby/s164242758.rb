# a b c k 全て整数で受け取る

a, b, c, k = gets.chomp.split(' ').map(&:to_i)


if a >= k
  puts k
 elsif a + b >= k
  puts a*1
else
  puts a*1 + (k - a - b)*(-1)
end