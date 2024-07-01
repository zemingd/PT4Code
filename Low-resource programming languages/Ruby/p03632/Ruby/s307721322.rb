a, b, c, d = gets.split.map(&:to_i)
s = (a..b).to_a & (c..d).to_a
puts s.empty? ? 0 : s.last - s.first
