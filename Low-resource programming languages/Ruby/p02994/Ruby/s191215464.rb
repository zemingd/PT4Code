N, L = gets.chomp.split(" ").map(&:to_i)

aji = N.times.to_a.map { |i| L + i }.sort_by {|i| i.abs }
puts aji[1..-1].inject(&:+)
