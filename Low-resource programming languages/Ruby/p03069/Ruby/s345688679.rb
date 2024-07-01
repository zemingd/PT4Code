n = gets.to_i
s = gets.chomp.split("")
white, black, flag = 0,0,0
border = [0,0]
for i in s
    if i == "." && flag == 1
       white += 1
       border = [white, black]
    elsif i == "#"
       black += 1
       flag = 1
    end
end

puts border.min