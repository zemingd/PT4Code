N, x = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort
if a.inject(&:+) < x
    puts N - 1
else 
    ans = 0
    count = 0
    a.each do |ai|
        count += ai
        if count <= x
            ans += 1
        else
            break
        end
    end
    puts ans
end