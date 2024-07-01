i = 0
while (((x,y = gets.split(" ").map(&:to_i)).select{|j| j != 0}.length == 2) && ((i += 1) <= 3000)) do
  puts ((x-y)<0) ? [x,y].join(" ") : [y,x].join(" ")
end