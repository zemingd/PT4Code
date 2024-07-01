def main
  s = gets.split.join
  n = s.to_i
  
  sq = Math.sqrt(n)
  sqi = sq.to_i
  
  if sqi * sqi == n
    puts "Yes"
  else
    puts "No"
  end
end

if __FILE__ == $0
  main
end
