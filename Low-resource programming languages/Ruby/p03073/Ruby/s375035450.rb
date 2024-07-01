s = gets.chomp.split("").map(&:to_i)
count = 0
for i in 1..(s.length) do
    if s[i-1] == s[i]
        count+=1
        s[i] = 1 - s[i-1]
    end
end
puts count