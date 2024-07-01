h = gets.to_i
count = 0
while h != 1 do
    count = count + 1
    h = h/2
end

count = count + 1
last = 1
total = 0
(1..count).each do |i|
    if i == 1
        total = 1
        last =  1
    else
        total = total + (last*2)
        last = last*2
    end
end
puts total