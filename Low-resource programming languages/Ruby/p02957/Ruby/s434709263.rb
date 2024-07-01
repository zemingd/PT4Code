a,b = gets.split(" ").map{|i|i.to_i}
if (a+b)%2 == 1 then
  puts "IMPOSSIBLE"
else
  puts (a+b)/2
end