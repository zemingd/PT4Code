a,b  = gets.chomp.split(' ').map(&:to_i)
if b%a==0
  puts a+b
else
  puts a-b
end