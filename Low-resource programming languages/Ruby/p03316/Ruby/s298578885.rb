n = gets.chomp
p n.to_i % n.chars.map(&:to_i).inject {|sum, num| sum + num} == 0 ? "Yes" : "No"
