line = gets.split(' ').map(&:to_i)
if(line[0]==5||line[0]==7)&&(line[1]==5||line[1]==7)&&(line[2]==5||line[2]==7)&&line[0]+line[1]+line[2]==17
  puts"YES"
else
  puts"NO"
end