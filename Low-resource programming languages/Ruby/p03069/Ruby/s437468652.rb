n = gets.to_i
s = gets.chomp.split("")
white, black = 0,0
border = [0,0]
flag = "."
for i in s
    if i == "."
       white += 1
       if flag == "#"
          border = [white, black]
          flag = "."
       end
    elsif i == "#"
       black += 1
       flag = "#"
    end
end

puts border.min