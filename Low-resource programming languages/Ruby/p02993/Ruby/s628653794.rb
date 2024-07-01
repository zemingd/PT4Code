S = gets.chars
ans = "Good"
S.each_with_index do |s,i|
    if s == S[i+1]
        ans = "Bad"
        break
    end
end
puts ans