a,b,c = gets.chomp.split(" ").map(&:to_f)
sab = Math.sqrt(a*b);sac = Math.sqrt(a*c);sbc = Math.sqrt(b*c)
if a+b+c+2*sab -2*sac - 2*sbc < 0
 puts "Yes"
else
 puts "No"
end