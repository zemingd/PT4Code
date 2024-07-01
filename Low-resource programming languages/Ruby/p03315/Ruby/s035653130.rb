def dsum(n)
  a = 0
  while n > 0
    a += n % 10
    n /= 10
  end
  a
end
 
n = gets.chomp.to_i
 
if n % dsum(n) == 0
  puts "Yes"
else
  puts "No"
end