n = gets.strip.to_i

input_lines = n.times.map do
  gets.strip
end

r = input_lines.group_by { |v| v }

puts "AC x #{r['AC'].to_a.length}"
puts "WA x #{r['WA'].to_a.length}"
puts "TLE x #{r['TLE'].to_a.length}"
puts "RE x #{r['RE'].to_a.length}"
