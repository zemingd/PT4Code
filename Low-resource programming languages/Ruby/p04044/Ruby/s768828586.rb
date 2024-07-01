N, L = gets.split.map(&:to_i)
ret = []
1.upto(N) do |n|
    s = gets.chomp
    insert_idx = n
    0.upto(n - 1) do |i|
        if ret[i] && s < ret[i]
            insert_idx = i
        end
    end
    ret.insert(insert_idx, s)
end
puts ret.join