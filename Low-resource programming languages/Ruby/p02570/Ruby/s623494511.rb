dist, time, speed = gets.chomp.split.map(&:to_i)
puts dist <= time * speed ? 'Yes' : 'No'
