i = gets.to_i
arr = []
 
i.times do |i|
  arr.push(gets.chomp)
end

puts ('AC x ' + arr.count('AC').to_s)
puts ('WA x ' + arr.count('WA').to_s)
puts ('TLE x ' + arr.count('TLE').to_s)
puts ('RE x ' + arr.count('RE').to_s)