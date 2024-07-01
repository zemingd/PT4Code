inputs = gets.split.map(&:to_i)
lists = inputs.combination(2).to_a
count = 0
lists. each do |a, b|
  count += 1 if a == b
end
puts count == 1 ? 'Yes' : 'No'
