def main
    ab = gets.chomp.split(" ").inject(:+).to_i

    c = 1
    while ab / c >= c
        if (ab / c == c) & (ab % c == 0)
            puts "Yes"
            return
        end
        c += 1
    end
    puts "No"    
end

main