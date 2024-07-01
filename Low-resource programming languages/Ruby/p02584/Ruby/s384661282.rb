x,k,d = gets.split(" ").map(&:to_i)
zero = 0
x = x.abs

if x > k * d
  i = x - k*d
  puts i
  exit
end

if x == d
  if k.even?
	puts x
  else
    puts zero
  end
  exit
end

if k.even?
  i = x % d
  if i == 0
    if k.even?
      i = d
    else
      i = 0
    end
  end      
elsif x < d
  i = d-x 
else
  i = x - k*d
  i = i.abs
end

puts i
  


