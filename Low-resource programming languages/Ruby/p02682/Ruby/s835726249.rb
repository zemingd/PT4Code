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

if (k - b) >= 0
  k -= b
end


if (k - c) >= 0
  max -= c * 1
elsif c > k && k > 0
  max -= k * 1
end 


  
puts max