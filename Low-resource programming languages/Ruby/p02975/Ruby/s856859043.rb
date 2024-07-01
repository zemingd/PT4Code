n = gets.to_i
a = Array.new(n); b = Array.new(n);
a = gets.split(" ").map(&:to_i);
b = a.sort{|x, y| x <=> y }
if n % 2 == 0
    if b.count(0) == n / 2
        if b.count(b[n/2]) == n/2
            puts "Yes"
        end


    elsif n == 3
        if a[0] ^ a[2] == a[1]
            puts "Yes"
        else
            puts "No"
        end
    elsif n % 3 == 0
        c = n / 3
    
    
        if b.count(b[0]) == c
            if b.count(b[c]) == c
                if b.count(b[2*c]) == c
                    puts "Yes"
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
end
