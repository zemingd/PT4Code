n=gets.to_i
h=n.times.map{gets.chomp}.tally
puts "AC x #{h['AC']||0}"
puts "WA x #{h['WA']||0}"
puts "TLE x #{h['TLE']||0}"
puts "RE x #{h['RE']||0}"