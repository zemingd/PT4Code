a = gets.chomp.to_i

ac = 0
wa = 0
tle = 0
re = 0

a.times do |i|
  result = gets.chomp
  case result
    when 'AC'
    	ac += 1
    when 'WA'
    	wa += 1
	when 'TLE'
    	tle += 1
    when 'RE'
    	re += 1
  	else
  end
end

puts "AC × #{ac}"
puts "WA × #{wa}"
puts "TLE × #{tle}"
puts "RE × #{re}"

