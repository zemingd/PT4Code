n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

result = a.map.with_index do |ai, i|
  [ai, i + 1]
end

puts result.sort_by{ |k, _| k }.map(&:last).join(' ')
