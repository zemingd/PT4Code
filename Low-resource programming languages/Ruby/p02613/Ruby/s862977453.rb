n = gets.to_i

ac=wa=tle=re=0

n.times do |i|
  s = gets.chomp
  ac +=1 if s=='AC'
  wa +=1 if s=='WA'
  tle +=1 if s=='TLE'
  re +=1 if s=='RE'
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
