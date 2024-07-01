# Your code here!
a,b,c = gets.chomp.split.map &:to_i
if(a==b and a*4 == c)
  puts "No"
  exit
end
puts (a**0.5+b**0.5 < c**0.5)? "Yes" : "No"
