n = gets.to_i
hash = Hash.new(0)
n.times do
  s = gets.chomp
  hash[s] += 1
end
puts "AC x #{hash["AC"]}"
puts "WA x #{hash["WA"]}"
puts "TLE x #{hash["TLE"]}"
puts "RE x #{hash["RE"]}"