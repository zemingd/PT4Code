n = gets.strip.to_i
aa = gets.strip.split.map(&:to_i)

puts aa.map.with_index {|a, i| [a, i+1] }.sort_by(&:first).map(&:last).join(' ')
