numbers=STDIN.gets.split.map(&:to_i)
numbers.sort!
puts numbers.to_s.join(" ")