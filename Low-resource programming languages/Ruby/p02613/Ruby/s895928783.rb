N = gets.to_i
word = []
ac = 0
wa = 0
tle = 0
re = 0

(1..N).each do
  word.push(gets.chomp)
end

word.each do |text|
  puts text
  case text
    when 'AC'
      ac += 1
    when 'WA'
      wa += 1
    when 'TLE'
      tle += 1
    when 'RE'
      re += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"

