input = gets.split.map(&:to_i)

if input[0] == input[1] then
    print input[0]**2
else
    print input.max() * (input.max()-1)
end