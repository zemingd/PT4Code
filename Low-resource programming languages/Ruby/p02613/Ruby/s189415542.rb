ac = 0
wa = 0
tle = 0
re = 0

input_list = Array.new

while line = gets
  input_list << line.chomp! # 改行を削除
end
input_list.each do |input|
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
puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
