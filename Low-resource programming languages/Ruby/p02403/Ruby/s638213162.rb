while n = gets.split.map(& :to_i)
  if n[0] == 0 && n[1] == 0
    break
  end
  n[0].times do
    n[1].times do
      print "#" 
    end
    puts ""
  end
  puts ""
end