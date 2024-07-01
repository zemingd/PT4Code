H,A = gets.chomp.split(' ').map(&:to_i)

if ((H % A) == 0) 
  puts (H / A)
else
  puts ((H / A) + 1)
end
