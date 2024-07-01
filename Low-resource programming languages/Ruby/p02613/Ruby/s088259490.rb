n = gets.to_i

res = {}

res['AC'] = 0
res['WA'] = 0
res['TLE'] = 0
res['RE'] = 0

n.times do
  r = gets.chomp
  res[r] += 1
end

puts "AC x #{res['AC']}"
puts "WA x #{res['WA']}"
puts "TLE x #{res['TLE']}"
puts "RE x #{res['RE']}"