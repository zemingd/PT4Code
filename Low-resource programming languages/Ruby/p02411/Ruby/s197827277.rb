loop do
  a,b,c = gets.split.map(&:to_i)
  break if a==-1 && b==-1 && c==-1
  if a==-1 || b==-1
    puts "F"
  elsif a+b>=80
    puts "A"
  elsif a+b>=65 && a+b<80
    puts "B"
  elsif a+b>=50 && a+b<65
    puts "C"
  elsif a+b>=30 && a+b<50
    if c>=50
      puts "C"
    else
      puts "D"
    end
  elsif a+b<30
      puts "F"
  end
end
