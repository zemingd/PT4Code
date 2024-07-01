x,k,d = gets.split(" ").map(&:to_i)
zero = 0

if x == k && k == d
  if k.even?
	puts x
  else
    puts zero
  end
  exit
end

if x == 0
  if k.even?
	puts zero
  else
    puts d
  end
  exit
end
    

x = x.abs

n = x / d

if n == 0
  if k.even?
	puts x
  else
    a = k-x
    puts a
  end
  exit
end
  
if k > n
  m = x % d
  puts m
  exit
end

l = k * d
m = x - l

puts m

