# Your code here!
inputs= gets.split.map(&:to_i)
answer = if inputs[0] <= 5 then 0 elsif inputs[0] >= 13 then inputs[1]  else inputs[1]/2 end 
puts(answer)