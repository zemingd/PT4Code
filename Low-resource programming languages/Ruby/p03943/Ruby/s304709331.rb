candys = gets.split.map(&:to_i)
candy =candys.sort
  if candy[0] + candy[1] == candy[2]
    puts "Yes"
  else
    puts "No"
  end  