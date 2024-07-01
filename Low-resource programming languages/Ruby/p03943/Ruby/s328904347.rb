a = gets.split.map(&:to_i)
puts a.max * 2 == a.reduce(0, :+) ? 'Yes' : 'No'