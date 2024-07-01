x = gets.to_i
ans = Array.new
0.upto(1000) do |a|
    (-1000).upto(1000) do |b|
        if a**5 - b**5 == x
            ans = [a, b]
            break
        end
    end
end
puts "#{ans[0]} #{ans[1]}"
