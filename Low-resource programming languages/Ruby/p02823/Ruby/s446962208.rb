_n,a,b=gets.chomp.split(' ').map(&:to_i)

num = (a - b).abs
arr = []
arr << a
arr << b

if num % 2 == 0
  puts num / 2
else
  puts arr.max - 1
end
