n = gets.to_i
cnt = Hash.new(0)
n.times do
  cnt[gets.chomp] += 1
end
puts 'AC x ' + cnt['AC'].to_s
puts 'WA x ' + cnt['WA'].to_s
puts 'TLE x ' + cnt['TLE'].to_s
puts 'RE x ' + cnt['RE'].to_s
