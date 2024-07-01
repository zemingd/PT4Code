s = gets.chomp.to_s
ans = "Good"

3.times do |i|
    if s[i] == s[i+1]
        ans = "Bad"
        break
    end
end

puts ans
