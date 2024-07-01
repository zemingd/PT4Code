n = gets.to_i
hash = Hash.new(0)
n.times { hash[gets.chomp] += 1 }
puts "AC x #{hash["AC"]}"
puts "WA x #{hash["WA"]}"
puts "TLE x #{hash["TLE"]}"
puts "RE x #{hash["RE"]}"
