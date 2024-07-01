N  = gets.to_i
XY = N.times.map do # XYは2次元配列　　第一成分が発言者の数、第二成分が対象者とその真偽
    a = gets.to_i
    a.times.map do
        x, y = gets.split(" ").map(&:to_i)
        [x - 1, y]
    end
end

def is_valid(i)
    for n in 0...N
        for x, y in XY[n]
            return false if (i[x] != y) && (i[n] == 1)
        end
    end
    true
end

max = 0

for i in 0...2**N
    if is_valid(i)
        count = i.to_s(2).count(?1)
        max = count if max < count 
    end
end

puts max


