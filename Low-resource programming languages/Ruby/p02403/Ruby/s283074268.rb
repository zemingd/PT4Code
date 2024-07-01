while (h,w = gets.split.map(&:to_i)) != [0,0]
  h.times do
    puts "#" * w
  end
  puts "\n"
end
