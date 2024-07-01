a, b, c, d = gets.chomp.split.map(&:to_i)

ans = false

ans = true if (a - c).abs <= d
ans = true if (a - b).abs <= d && (b - c).abs <= d

puts ans ? "Yes" : "No"