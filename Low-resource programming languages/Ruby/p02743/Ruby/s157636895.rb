a,b,c = gets.chomp.split(" ").map(&:to_i);

a *= 1000
b *= 1000
c *= 1000

if a + b  + 2*Math.sqrt(a*b) < c
  puts "Yes"
else
  puts "No"
end