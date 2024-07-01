n = gets.to_i
ts = $<.map(&:to_i)
puts ts.inject(&:lcm)