n = gets.to_i
arr = n.times.map { |i| gets.chomp }
ac = 0
wa = 0
tle = 0
re = 0

arr.each do |i|
  case i
  when "AC"
    ac += 1
  when "WA"
    wa += 1
  when "TLE"
    tle += 1
  when "RE"
    re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
