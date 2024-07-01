a,b,x = gets.chomp.splut(" ").map{&:to_i}

if a <= x && a + b >= x then
  puts "YES"
else
  puts "NO"
end
