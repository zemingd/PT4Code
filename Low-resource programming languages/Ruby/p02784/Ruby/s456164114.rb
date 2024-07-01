h, n = gets.strip.split(' ').map(&:to_i)
p = gets.strip.split(' ').map(&:to_i)
r = 'No'
r = 'Yes' if h <= p.inject(&:+)
puts r