S = gets.chomp
T = gets.chomp

hit = 0

3.times do |i|
    if S[i] == T[i]
        hit +=1
    end
end

puts hit