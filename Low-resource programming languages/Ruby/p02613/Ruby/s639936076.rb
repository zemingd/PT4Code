input_list = []
ac = 0
wa = 0
tle = 0
re = 0
input_list = gets.split(/\R/)
input_list.each do input
  case input
    when "AC"
    	ac +=1
    when "WA"
    	wa +=1
    when "TLE"
    	tle +=1
    when "RE"
    	re +=1
  	else
  end
end
p "AC x #{ac}"
p "WA x #{wa}"
p "TLE x #{tle}"
p "RE x #{re}"
  