A, B = gets.split(" ").map(&:to_s)

ans = 0

(A..B).each do |s|
    if s.to_s[0..1] == s.to_s[3..4]
        ans += 1
    end
end

puts ans