input = gets.chomp.split.map(&:to_i)
g1 = [1, 3, 5, 7, 8, 10, 12]
g2 = [4, 6, 9, 11]
g3 = [2]
ans = (g1.include?(input[0]) && g1.include?(input[1]) ||
          g2.include?(input[0]) && g2.include?(input[1]) ||
          g3.include?(input[0]) && g3.include?(input[1]) )
  if ans  
    puts "Yes" 
  else
    puts "No"
  end