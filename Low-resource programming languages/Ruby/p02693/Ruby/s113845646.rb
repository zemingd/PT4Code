k = gets.to_i
a, b =  gets.split.map(&:to_i)
if k == 1 
  puts "OK"
  exit
end

if (b-a)/k != 0
  puts "OK"
else
  puts "NG"
end