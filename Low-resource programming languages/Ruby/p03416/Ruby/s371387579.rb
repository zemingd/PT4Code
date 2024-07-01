line = gets.split(' ').map(&:to_i)
num = 0 
for value in line[0]..line[1] do
    number =  value
    number = number.to_s
    if number === number.reverse
        num = num + 1
    end
end
puts num