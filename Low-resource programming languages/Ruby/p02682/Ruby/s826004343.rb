a,b,c,k = gets.split(' ').map(&:to_i)

if a+b-k >= 0
  puts a
else
  puts a - (k-a-b)
end
