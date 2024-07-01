A, B = gets.chomp.split(" ").map(&:to_i)

x = A / 0.08
y = B / 0.1
i = 1

if x <= y 
    z = y.ceil
    if (z * 0.08).floor == A
        puts z
    elsif 
        while i < 13 do 
            if ((z + i)* 0.08).floor == A && ((z + i)* 0.1).floor == B
                puts (z + i)
            end
            i += 1
        end
    else
        puts -1
    end
    else
    z = x.ceil
    if (z * 0.1).floor == B
      puts z
    elsif 
        while i < 10 do 
        if ((z + i)* 0.1).floor == B && ((z + i)* 0.08).floor == A
            puts (z + i)
        end
        i += 1
    end
    else
        puts -1
    end
    end
