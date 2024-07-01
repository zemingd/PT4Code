patarn = ['AC', 'WA', 'TLE', 'RE']
input = []
n = gets.chomp.to_i
n.times{input << gets.chomp}
patarn.each do |judge|
  puts "#{judge} x #{input.count(judge)}"
end