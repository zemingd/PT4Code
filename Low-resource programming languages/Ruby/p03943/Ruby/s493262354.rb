cd = gets.split.map(&:to_i).sort
puts cd[0]+cd[1] == cd[2] ? "Yes" : "No"