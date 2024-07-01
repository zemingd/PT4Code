n = gets.strip.split.map(&:to_i).sort
puts n[2]*10 + n[1] + n[0]