n = gets.chomp.to_i
colors = gets.chomp.split

puts colors.include?("Y") ? "Four" : "Three"
