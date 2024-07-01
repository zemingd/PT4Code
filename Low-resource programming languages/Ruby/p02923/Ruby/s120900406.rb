n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)
max = 0
count = 0
i = 0
while true
    if h[i] >= h[i+1]
        count += 1
        #p count
    else
        
        count = 0
    end
    max = [max,count].max
    i += 1
    if i == n-1
        puts max
        break
    end
    
end