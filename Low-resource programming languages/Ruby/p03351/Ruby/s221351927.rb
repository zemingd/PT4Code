a, b, c, d = gets.split.map(&:to_i)
puts (a-c).abs <= d || [(a-b).abs, (b-c).abs].max <= d ? 'Yes' : 'No'