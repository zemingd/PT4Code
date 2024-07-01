n = gets.to_i
a = Array.new(n); b = Array.new(n);
a = gets.split(" ").map(&:to_i);
b = a.uniq.sort {|a, b| a <=> b}
if b.length == 1 && b[0] == 0
    puts "Yes"
elsif b.length != 3
    if b.length == 2
        if n % 3 == 0
            if b[0] == 0
                if a.count(b[1]) == n*2/3
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
        puts "No"
    end
elsif b[0] ^ b[1] == b[2]
    if n == 3
        puts "Yes"
    elsif n % 3 == 0
        c = n / 3
        if a.count(b[0]) == c && a.count(b[1]) == c
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
            