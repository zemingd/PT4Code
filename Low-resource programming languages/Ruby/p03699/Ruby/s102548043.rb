N = gets.to_i
SS = readlines.map(&:to_i)
puts(SS.map.with_index { |s, i| SS.drop(i).sum }.sort_by { |e| -e }.detect { |e| e % 10 != 0 }.to_i)