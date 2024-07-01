line = STDIN.gets
n = line.to_i
original_n = n

harshad = 0
while (n > 0) 
  n = n / 10
  harshad += n % 10
end

if (original_n % harshad == 0)
  puts 'Yes'
else
  puts 'No'
end
