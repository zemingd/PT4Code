(a, b, c, d) = gets.chomp.split(' ').map(&:to_i)

f = ((c - a).abs <= d) or (((b - a).abs <= d) and ((c - b).abs <= d))

puts (f ? 'Yes' : 'No')