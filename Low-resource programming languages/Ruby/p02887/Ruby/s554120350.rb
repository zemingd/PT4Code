N = gets.to_i
S = gets.chomp
ans = []

N.times do |i|
    if S[i] != S[i + 1]
        ans << S[i]
    end
end

puts ans.size