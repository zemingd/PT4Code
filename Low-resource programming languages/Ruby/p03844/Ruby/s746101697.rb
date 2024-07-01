a,o,b = gets.split.map(&:to_s)
puts o == "+" ? a.to_i + b.to_i : a.to_i - b.to_i