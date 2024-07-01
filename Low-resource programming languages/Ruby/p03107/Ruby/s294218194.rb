s = gets.chomp.split("")

red = 0
blue = 0
ans = 0
s.each do |n|
    if n.to_i == 0
        red += 1
    else
        blue += 1
    end
=begin
    if n.to_i == 0
        red += 1
        if blue > 0
            red -= 1
            blue -= 1
            ans += 2
        end
    else
        blue += 1
        if red > 0
            red -= 1
            blue -= 1
            ans += 2
        end
    end
=end
    # puts "#{red}, #{blue}"
end

ans = red < blue ? red : blue
puts ans * 2
