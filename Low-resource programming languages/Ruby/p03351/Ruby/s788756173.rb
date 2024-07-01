a, b, c, d = gets.chomp.split(" ").map(&:to_i)
flag1 = (b-a).abs <= d && (c-b).abs <= d
flag2 = (c-a).abs <= d

puts flag1 || flag2 ? "Yes" : "No"