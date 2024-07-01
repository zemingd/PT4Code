S = gets.chomp!
count = Array.new(10,0)
max = 0

S.size.times do |i|
    if S[i] == 'A' || S[i] == 'C' || S[i] == 'G' || S[i] == 'T'
        count[i] = count[i - 1] + 1
        if max < count[i]
            max = count[i]
        end
    end
end

puts max
