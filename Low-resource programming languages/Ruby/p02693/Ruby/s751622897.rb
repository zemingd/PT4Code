k = gets.to_i
a,b = gets.split.map(&:to_i)
if k <= b-a+1
  puts "OK"
else
  puts "NG"
end