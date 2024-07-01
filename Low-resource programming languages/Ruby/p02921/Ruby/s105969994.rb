S = gets.split('')
T = gets.split('')

i = 0
S.size.times do |j|
    i += 1 if S[j] == T[j]
end

puts i