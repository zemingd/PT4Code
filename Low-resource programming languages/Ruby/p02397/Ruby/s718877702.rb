loop{
x = gets.split(" ").map{|x| x.to_i}
if x[0]==0 and x[1]==0
break
else
puts x.sort.join(" ")

end

}