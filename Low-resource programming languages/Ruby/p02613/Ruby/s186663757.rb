n = gets.to_i
ar = []
for num in 0..n-1 do
 word = gets.chomp
  ar << word
end
  ac = ar.count("AC")
  wa = ar.count("WA")
  tle = ar.count("TLE")
  re = ar.count("RE")
puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"