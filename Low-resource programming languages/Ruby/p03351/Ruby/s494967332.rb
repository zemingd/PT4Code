a, b, c, d = gets.split.map(&:to_i)
puts ((a-c).abs<=d or ((a-b).abs<=d and (b-c).abs<=d)) ? "Yes" : "No"