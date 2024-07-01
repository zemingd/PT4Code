a, b, c = gets.split(" ").map(&:to_i)
i = 1;
flag = 0
while (1) 
    ans = a * i
    
    if ans < 100000
        break
    end
    i += 1
    
    if ans % b == c
            flag = 1
    end
    
end

if flag == 1
    puts "YES"
else
    puts "NO"
end