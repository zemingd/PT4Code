s, t = readlines.map(&:chomp)

puts s.split(//).sort.join <t.split(//).sort.reverse.join ? 'Yes' : 'No'