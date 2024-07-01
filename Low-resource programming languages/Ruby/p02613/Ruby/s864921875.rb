n = gets.to_i
hash = {}
n.times do
  str = gets.chomp
  if hash[str].nil?
    hash[str] = 1
  else
    hash[str] += 1
  end
end

puts "AC x #{hash["AC"] || 0}"
puts "WA x #{hash["WA"] || 0}"
puts "TLE x #{hash["TLE"] || 0}"
puts "RE x #{hash["RE"] || 0}"
