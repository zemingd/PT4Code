n = gets.to_i
a = Array.new(n); b = Array.new(n);
a = gets.split(" ").map(&:to_i);

if n == 3
    if a[0] ^ a[2] == a[1]
        puts "Yes"
    else
        puts "No"
    end
elsif n % 3 == 0
    c = n / 3
    b = a.sort{|x, y| x <=> y }
    
    if b.count(b[0]) == c
        if b.count(b[c]) == c
            if b.count(b[2*c]) == c
                if b[0] ^ b[c] == b[2*c]
                    puts "Yes"
                else
                    puts"No"
                end
            else
                puts "No"
            end
        else
            puts "No"
        end
    else
        puts "No"
    end            
      
else
    j = 0
    for i in 0..n-1
        if a[i] != 0
            j = 1
            break
        end
    end
    if j == 0
        puts "Yes"
    else
        puts "No"

    end
end
