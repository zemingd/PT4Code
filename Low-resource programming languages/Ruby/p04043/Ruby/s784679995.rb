a=gets.split.map(&:to_i)
if (a.count(7)==2) and (a.count(5)==1)
	puts "YES"
else
  	puts "NO"
end
