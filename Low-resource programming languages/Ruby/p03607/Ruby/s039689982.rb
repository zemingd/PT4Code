n = gets.chomp.to_i
a = []
n.times { a << gets.chomp.to_i }

puts a.group_by { |i| i }.map { |k, v| [k, v.count] }.to_h.select { |_, count| count.odd? }.keys.count
