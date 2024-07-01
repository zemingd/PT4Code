x, n = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.chars.map(&:to_i)
ans = (x - p.min - 1).abs
if n == 0 
    puts "0"
end

for i in (p.max+1)..(p.min-1)
    if p.include?(i)
    else

        if ( (x - i).abs < ans) 
            ans =  (x - i).abs
        end
    end
end
puts ans