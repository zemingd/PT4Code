while true
  H, W = gets.chomp.split.map(&:to_i)
  break if H == 0 && W == 0
  H.times do
    puts "#" * W
  end
end