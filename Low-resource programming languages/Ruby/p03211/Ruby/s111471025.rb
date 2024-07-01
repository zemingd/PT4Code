min = Float::INFINITY
gets.chomp.split("").each_cons(3) do |nums|
  min = [min, (753 - nums.join("").to_i).abs].min
end

puts min
