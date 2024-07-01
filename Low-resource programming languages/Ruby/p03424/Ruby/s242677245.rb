n = gets.to_i
exit if n <3
#PWGY
val = [0,0,0,0]
arares = gets.chomp.split(" ")
n.times do|i|
   val[0] =val[0]+1  if arares[i] == "P" && val[0]==0
   val[1] =val[1]+1  if arares[i] == "W" && val[1]==0
   val[2] =val[2]+1  if arares[i] == "G" && val[2]==0
   val[3] =val[3]+1  if arares[i] == "Y" && val[3]==0
end
case val.inject {|sum, n| sum + n }
when 3 then
  puts "Three"
when 4 then
  puts "Four"
else
end
