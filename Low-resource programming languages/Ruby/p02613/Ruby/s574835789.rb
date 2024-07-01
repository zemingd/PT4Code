#ABC173B.rb
n = gets.to_i

ac = 0
wa = 0
tle = 0
re = 0

(1..n).each do |nn|
  str = gets.chomp
  if str == "AC"
    ac += 1
  elsif str == "WA"
    wa += 1
  elsif str == "TLE"
    tle += 1
  else
    re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
