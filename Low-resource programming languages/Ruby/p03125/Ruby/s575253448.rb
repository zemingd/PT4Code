(a, b) = gets.chomp.split(' ').map(&:to_i)
 
if b % a == 0 then
  puts (b + a).to_s
else
  puts (b - a).to_s
end