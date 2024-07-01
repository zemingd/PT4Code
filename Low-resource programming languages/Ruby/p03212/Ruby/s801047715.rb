n = gets.chomp
s = n.size
count = 0
st = 3
while true
    if n.to_i >= 357
        ["3","5","7"].repeated_permutation (st) do |i|
            if i.count("7") >= 1 && i.count("5") >= 1&& i.count("3") >= 1
                ii = i.join("").to_i
                if ii <= n.to_i
                    count += 1
                end
            end
        end
    else
        count = 0
        break
    end
    if st == s
        break
    end
st += 1
end

puts count