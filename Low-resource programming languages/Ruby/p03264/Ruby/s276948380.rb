k=gets.chomp.to_i

half = k/2
if k%2 == 0
  puts half**2
else
  puts half*(half+1)
end
