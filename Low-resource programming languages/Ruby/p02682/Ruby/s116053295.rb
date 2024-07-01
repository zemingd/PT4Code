a,b,c,k = gets.chomp.split.map(&:to_i)

num = k-a-b

if num <= 0
  puts a
else
  puts (num*-1) + a
end