n, l = gets.chomp.split.map(&:to_i)
bf = n * (l + l + n - 1) / 2
af = (l...l + n).to_a
af.sort_by! {|t| t.abs }
puts bf - af[0]