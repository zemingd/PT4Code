# abc086 B
a, b = gets.split.map(&:to_i)

puts Math.sqrt( (a.to_s + b.to_s).to_i ) % 1 == 0 ? 'Yes' : 'No'
