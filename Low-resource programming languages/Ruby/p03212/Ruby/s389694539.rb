n = gets.chomp
s = n.size
count = 0
st = 3
until st == s+1
["3","5","7"].repeated_permutation (st) do |i|
    if i.count("7") >= 1 && i.count("5") >= 1&& i.count("3") >= 1
        ii = i.join("").to_i
        if ii <= n.to_i
            count += 1
        end
    end
end
st += 1
end

puts count