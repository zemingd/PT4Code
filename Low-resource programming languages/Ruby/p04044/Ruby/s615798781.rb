n, l = gets.chomp.split.map(&:to_i)
ss = []
n.times { ss << gets.chomp }

ss.map! { |s| s.split('').sort.join }
puts ss.sort.join
