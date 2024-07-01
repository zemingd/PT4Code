a,b,c = gets.split.map(&:to_f)
if a**0.5 + b**0.5 < c**0.5 
  puts "Yes"
else
  puts "No"
end 
