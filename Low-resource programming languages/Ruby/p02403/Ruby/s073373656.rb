while true
  rect = gets.chomp.split.map(&:to_i)
  if rect[0] == 0 && rect[1] == 0
    break
  end

  rect[0].times do
    puts "#"*rect[1]
  end
  print "\n"
end