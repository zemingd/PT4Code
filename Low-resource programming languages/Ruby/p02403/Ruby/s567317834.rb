while true
  W, H = gets.chomp.split.map { |a| a.to_i }
  time = 0
  while time <= W
    time += 1
    puts "#" * H
  end
  if H == 0 || W == 0
    break
  end
end