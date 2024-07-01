n, _ = gets.chomp.split.map(&:to_i)
s = Array.new(n) { gets.chomp }
puts s.sort!.join("")