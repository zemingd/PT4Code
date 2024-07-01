distance, time, speed = gets.strip.split.map(&:to_i)

((distance / speed) < time) ? 'Yes' : 'No'
