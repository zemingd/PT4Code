A, B = gets.chomp.split(" ").map(&:to_i)

x = A / 0.08
y = B / 0.1

if x <= y 
    z = y 
    if (z * 0.08).floor == A
        puts z
    else
        puts -1
    end
else
    z = x
    if (z * 0.1).floor == B
      puts z
    else
        puts -1
    end
end

