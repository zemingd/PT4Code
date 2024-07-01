line = gets.split(' ').map(&:to_i)

A = line[0]
b = line[1]
c = line[2]
k = line[3]

max = 0

if (k - A) >= 0
  max += A * 1
  k -= A
end



while b > 0 && k > 0
  k -= 1
  b -= 1
end


while k > 0 && c > 0
  max -= 1
  k -= 1
  c -= 1
end 


  
puts max