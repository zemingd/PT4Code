n,m=gets.chomp.split.map(&:to_i)
num=[*0..9] - gets.chomp.split.map(&:to_i)
while
  if (n.to_s.split("").map(&:to_i)-num).empty?
    puts n;exit
  else 
   	n+=1
  end
end