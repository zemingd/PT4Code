A, B = gets.chomp.split(" ").map(&:to_i)

x = A / 0.08
y = B / 0.1

if x <= y 
    z = y.floor
    if (z * 0.08).floor == A
        puts z
    elsif (z * 0.08).floor == A - 1
        puts z + 1
    else
        puts -1
    end
else
    z = x.floor
    if (z * 0.1).floor == B
      puts z
    elsif (z * 0.08).floor == B - 1
        puts z + 1
    else
        puts -1
    end
end
