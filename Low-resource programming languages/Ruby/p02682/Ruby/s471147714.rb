# a b c k 全て整数で受け取る

a, b, c, k = gets.chomp.split(' ').map(&:to_i)

if a >= k 
  puts a*1
elsif a < k && b >= (k - a)
  puts a*1
elsif a < k && b < (k - a)
  puts a*1 - (k - a - b)*(-1)
end