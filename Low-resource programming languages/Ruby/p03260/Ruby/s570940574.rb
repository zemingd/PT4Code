while line = gets
  a, b=line.chomp.split(" ").map(&:to_i)
  if a % 2 == 0 or b % 2 == 0
    puts "No"
  else
    puts "Yes"
  end
  
end