ac=0
wa=0
tle=0
re=0
gets.to_i.times{
  case gets.chomp
    when "AC"
    	ac+=1
    when "WA"
    	wa+=1
    when "TLE"
    	tle+=1
    when "RE"
    	re+=1
  end
  }

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
