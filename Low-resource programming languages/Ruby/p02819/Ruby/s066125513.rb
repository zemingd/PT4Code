x = gets.to_i
while (true)
    flag = true
    xx = (x**(1/2.0)).round
    (2..xx).each do |i|
        flag = false if x%i == 0
    end
    if flag
        p x
        break
    end
    x+=1
end