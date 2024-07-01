while true
  h, w = gets.chomp.split(/\s/).map(&:to_i)
  break if h == 0 && w == 0
  h.times do
    puts "#" * w
  end
  puts ""
end