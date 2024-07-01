/n,a,b=gets.split.map(&:to_i)/
/.sort/
S = gets.chomp.chars
a,b,c,d = S
if(a != b && c != d && b != c)
  puts "Good\n"
else
puts "Bad\n"
end
