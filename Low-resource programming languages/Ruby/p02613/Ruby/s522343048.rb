a = gets.to_i
b = a.times.map{gets.chomp.to_s}

ac= 0
wc = 0
tle = 0
re = 0 

b.each  do |i|  
  if "AC" == i
    ac += 1
  elsif "WA" == i
    wc += 1
  elsif "TLE" == i
    tle += 1 
  elsif "RE" == i
    re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wc}"
puts "TLE x #{tle}"
puts "RE x #{re}"