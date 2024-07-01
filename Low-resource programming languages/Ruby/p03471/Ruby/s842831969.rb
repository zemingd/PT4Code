n, yen = gets.split.map(&:to_i)

a = b = c = 0

k = yen / 1000

if k - n < 0
  puts Array.new(3, -1) * " "
  exit
end

tmp = k - n

(0..tmp/9).each do |i|
  
  tmp = k - n
  tmp -= 9 * i
  if tmp % 4 == 0
    a = i
    b = tmp / 4
    c = n - a - b
    
    if c >= 0
      puts [a, b, c] * " "
      # puts a + b + c
      exit
    end
  end
end

puts Array.new(3, -1) * " "
exit
  


mai0 = yen % 5000 / 1000
c += mai0 
n -= mai0
yen -= 1000 * mai0

mai1 = yen % 10000 / 5000
b += mai1
n -= mai1
yen -= 5000 * mai1

mai2 = yen / 10000 
a += mai2 
n -= mai2
yen -= 10000 * mai2

if n < 0
  puts Array.new(3, -1) * " "
  exit
end

n += mai2
yen += 10000 * mai2

k = yen / 1000

p [n, yen, a, b, c]
(0..(k-n)/9).each do |i|
  
  ans = ( k - n ) - 9 * i
  if ans % 4 == 0
    puts [a+i, ans/4, c] * " "
    p [n, yen]
  end
end
  

# p [n, yen]

# puts [a, b, c] * " "