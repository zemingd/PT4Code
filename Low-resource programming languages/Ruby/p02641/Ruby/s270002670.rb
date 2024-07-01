x,n = gets.split.map &:to_i
p = gets.split.map &:to_i

full = (0..101).to_a
ans = (full - p).min_by{ |v| (v - x).abs }

puts ans

