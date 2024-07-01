a, b, c, d = gets.split.map(&:to_i)
is_ok = (a - c).abs <= d || ((a - b).abs <= d && (b - c).abs <= d)
puts(is_ok ? 'Yes' : 'No')
