A , B = gets.split(" ").map!{|i| i.to_i}


wa = A + B 
sa = A - B 
seki = A* B 

answer = wa 

if sa > answer
    answer = sa
end 

if seki > answer
    answer = seki
end
puts answer