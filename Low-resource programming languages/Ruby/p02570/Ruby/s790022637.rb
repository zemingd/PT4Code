distance, time, speed = gets.strip.split.map(&:to_i)

puts ((speed * time) >= distance) ? 'Yes' : 'No'
