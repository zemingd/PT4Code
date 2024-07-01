distance, time, speed = gets.strip.split.map(&:to_i)

puts ((distance / speed) <= time) ? 'Yes' : 'No'
