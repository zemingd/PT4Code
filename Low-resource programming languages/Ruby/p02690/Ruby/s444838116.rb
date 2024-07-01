x = gets.to_i
ans = Array.new
(-100).upto(100) do |a|
    (-100).upto(100) do |b|
        if a**5 - b**5 == x
            ans = [a, b]
            break
        end
    end
end
puts "#{ans[0]} #{ans[1]}"