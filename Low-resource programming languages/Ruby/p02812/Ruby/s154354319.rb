n = gets.chomp.to_i
s = gets.chomp
count =0
for i in 0..(n-1) do
    if s[i] == "A"
        if s[i+1] == "B"
            if s[i+2] == "C"
                count += 1
            end
        end
    end
end
puts count