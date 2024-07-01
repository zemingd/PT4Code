a,b,x= gets.split(" ").map { |e| e.to_i }

if a<=x and x<=(a+b)
  puts "YES"
else
  puts "NO"
end
