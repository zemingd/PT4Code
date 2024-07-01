#set
a,b,c,d = gets.chomp.split("").map(&:to_i)


#main
answer_1 = a + b + c + d
if answer_1 == 7 then
  print ("#{a}+#{b}+#{c}+#{d}=7\n")
  exit
end

answer_2 = a - b + c + d
if answer_2 == 7 then
  print ("#{a}-#{b}+#{c}+#{d}=7\n")
  exit
end

answer_3 = a + b - c + d
if answer_3 == 7 then
  print ("#{a}+#{b}-#{c}+#{d}=7\n")
  exit
end

answer_4 = a + b + c - d
if answer_4 == 7 then
  print ("#{a}+#{b}+#{c}-#{d}=7\n")
  exit
end

answer_5 = a - b - c + d
if answer_5 == 7 then
  print ("#{a}-#{b}-#{c}+#{d}=7\n")
  exit
end

answer_6 = a - b + c - d
if answer_6 == 7 then
  print ("#{a}-#{b}+#{c}-#{d}=7\n")
  exit
end

answer_7 = a + b - c - d
if answer_7 == 7 then
  print ("#{a}+#{b}-#{c}-#{d}=7\n")
  exit
end

answer_8 = a - b - c - d
if answer_8 == 7 then
  print ("#{a}-#{b}-#{c}-#{d}=7\n")
  exit
end