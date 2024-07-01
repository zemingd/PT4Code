loop {
  sum = 0
  m_score,f_score,r_score = gets.split.map(&:to_i)
  break if m_score == -1 && f_score == -1 && r_score == -1
  sum = m_score + f_score

  if sum >= 80
    puts "A"
  elsif sum < 80 && sum >= 65
    puts "B"
  elsif sum < 65 && sum >= 50
    puts "C"
  elsif sum < 50 && sum >= 30
    if r_score >= 50
      puts "C"
    else
      puts "D"
    end
  else 
    puts "F"
  end

}

