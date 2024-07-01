n, k = STDIN.gets.split(' ').map(&:to_i)
sticks = STDIN.gets.split(' ').map(&:to_i).sort{|a, b| b <=> a }

puts sticks.take(k).reduce(&:+)