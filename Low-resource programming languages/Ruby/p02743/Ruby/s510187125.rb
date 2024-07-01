a,b,c = gets.chomp.split(" ").map(&:to_f)
sab = Math.sqrt(a*b)
if sab < (c-a-b)/2
 puts "Yes"
else
 puts "No"
end