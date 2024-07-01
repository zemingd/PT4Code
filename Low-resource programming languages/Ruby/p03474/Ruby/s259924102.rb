A,B =gets.split.map(&:to_i)
S=[]
A.times do (S<<STDIN.getc)end
flag=0
temp = STDIN.getc
flag = -1 if !(temp  == "-")
B.times do(S<<STDIN.getc) end
S.each do |s|
 flag = -1 unless s>="0" && s<="9"
end
if flag ==-1 then
  print "No"
else
  print "Yes"
end