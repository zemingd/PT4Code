arr = STDIN.gets.split.map(&:to_i)
arr.sort!
puts arr.join(" ")