r,g,b = gets.chomp.split.map(&:to_i)
num = g*10 + b
  if num % 4 == 0 
    puts "YES"
  else
    puts "NO"
  end  