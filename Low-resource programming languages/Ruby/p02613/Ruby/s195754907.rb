N = gets.to_i
S = N.times.map{gets.chomp.split.map(&:to_s)}.flatten
a = S.count("AC")
b = S.count("WA")
c = S.count("TLE")
d = S.count("RE")

puts "AC x #{a}"
puts "WA x #{b}"
puts "TLE x #{c}"
puts "RE x #{d}"
