x = 0
gets.chars { |i| i == "+" ? x+=1 : x-=1 }
puts x