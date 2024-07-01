#候補
a = 1, 6, 9, 36, 81, 216, 729, 1296, 6561, 7776, 46656, 59049

n = gets.to_i
a = a.select{|i|i <= n}

map = []

map[0] = [0]

i = 1
while true
    temp = []
    a.each do |j|
        map[i-1].each do |k|
            temp << j + k
            if j + k == n
                puts i
                exit
            end
        end
    end
    map[i] = temp.uniq
    i += 1
end
