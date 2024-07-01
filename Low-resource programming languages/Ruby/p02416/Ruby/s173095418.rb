while (x = gets.to_i) != 0
puts x.to_s.split("").map(&:to_i).sum
end
