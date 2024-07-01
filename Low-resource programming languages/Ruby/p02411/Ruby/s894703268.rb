while allscore = STDIN.gets.split(" ")
  m = allscore[0].to_i
  f = allscore[1].to_i
  r = allscore[2].to_i

  if m == -1 && f == -1 && r == -1
    break
  elsif m == -1 || f == -1
    puts "F"
  elsif m + f >= 80
    puts "A"
  elsif m + f >= 65 && m + f < 80
    puts "B"
  elsif m + f >= 50 && m + f < 65 || m + f >= 30 && m + f < 55 && r >= 50
    puts "C"
  elsif m + f >= 30 && m + f < 55
    puts "D"
  elsif m + f < 30
    puts "F"
  end
end  
    
    
