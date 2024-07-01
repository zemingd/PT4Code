num = gets.chomp.split(" ").map(&:to_i)
maisu = num[0]
money = num[1]
found = false
for a in 0..maisu do
    for b in 0..maisu-a do
        for c in 0..maisu-a-b do
            if 10000 * a + 5000 * b + 1000 * c == money
                puts "#{a} #{b} #{c}"
                found = true
                break
            end
        end
        
        if found
            break
        end
        
    end
    
    if found
            break
    end
        
end

if !found
    puts "-1 -1 -1"
end