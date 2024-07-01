airports = gets.strip.split(' ').map(&:to_i)
airports.sort!
puts airports[0..1].inject(&:+)
