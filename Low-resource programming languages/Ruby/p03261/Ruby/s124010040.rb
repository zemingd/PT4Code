WS = readlines.drop(1).map(&:chomp)
if WS.uniq.size != WS.size
  puts "No"
elsif WS.each_cons(2).any?{|s1, s2| s1[-1] != s2[0]}
  puts "No"
else
  puts "Yes"
end