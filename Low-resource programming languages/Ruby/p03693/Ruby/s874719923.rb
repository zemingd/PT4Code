num_r, num_g, num_b = gets.split(" ").map(&:to_i)
 
def cul(r, g, b)
    if (100*r + 10*g + b) % 4 == 0
        puts "YES"
    else
        puts "NO"
    end
end
 
cul(num_r, num_g, num_b)