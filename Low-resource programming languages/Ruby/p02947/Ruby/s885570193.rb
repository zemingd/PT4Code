n = gets.to_i
str = []
n.times { str.push(gets.chars.sort.join) }

values = str.group_by{ |item| item }.values

values.reject { |v| v.length <= 1 }

puts values.map { |v| v.length * (v.length - 1) / 2 }.inject(&:+)