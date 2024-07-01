n,a,b=gets.chomp.split(' ').map(&:to_i)

num = a - b
arr = []
arr << a
arr << b

if num % 2 == 0
  puts num.abs / 2
else
  puts arr.max - 1
end
