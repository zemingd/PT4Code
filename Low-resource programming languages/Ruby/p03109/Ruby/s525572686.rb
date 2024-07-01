s = gets.chomp
a,b,c = s.split("/").map(&:to_i)
ret = "Heisei"
if(a < 2019)
  puts ret
elsif(a > 2019)
  puts "TBD"
elsif(b < 4)
  puts ret 
elsif(b>5)
  puts "TBD"
elsif(c <= 30)
  puts ret
else
  puts "TBD"
end
	