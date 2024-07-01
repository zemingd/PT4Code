N = gets.strip
puts (N.to_i % N.chars.inject(0) { |s, n| s += n.to_i }).zero? ? 'Yes' : 'No'
