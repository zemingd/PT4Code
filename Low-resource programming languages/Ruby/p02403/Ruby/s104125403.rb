while true
  W, H = gets.chomp.split.map { |a| a.to_i }
    H.times do
    puts "#" * H
  end
  if H == 0 || W == 0
    break
  end
end