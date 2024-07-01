x=gets.chomp.to_i
rx = x**(1/2.0)
i = x
while true do
    flag = true
    2.upto(rx) do |j|
        if i % j == 0
            flag = false
            break
        end
    end
    if flag
        puts i
        exit
    end
    i+=1
end