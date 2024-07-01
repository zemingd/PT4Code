a,b,c = gets.split.map(&:to_i)
if a**2 + b**2 +c**2 +2*(a*b - b*c -c*a) < 4*a*b
  puts "No"
else
  puts "Yes"
end