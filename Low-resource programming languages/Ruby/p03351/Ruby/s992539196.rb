a, b, c, d = gets.split.map(&:to_i)
puts (b-a).abs <= d || (c-b).abs <= d ? 'Yes' : 'No'