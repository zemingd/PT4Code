n = gets.to_i
count = Hash.new(0)
n.times do
  s = gets.chomp
  count[s] += 1
end
puts "AC x #{count['AC']}"
puts "WA x #{count['WA']}"
puts "TLE x #{count['TLE']}"
puts "RE x #{count['RE']}"
