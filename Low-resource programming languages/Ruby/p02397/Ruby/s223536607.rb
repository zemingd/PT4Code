i = 1
while ((i <= 3000) && ((x,y = gets.split(" ").map(&:to_i)).select{|j| j != 0}.length > 0)) do
  puts ((x-y)<0) ? [x,y].join(" ") : [y,x].join(" ")
  i += 1
end