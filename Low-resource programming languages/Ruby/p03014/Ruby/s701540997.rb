H, W = gets.split(" ").map(&:to_i)
k, m, r = Array.new(W, 0), Array.new(W, 0), 0

H.times do
    l = 0
    s = gets.split("").map(&:to_i)
    (0...W).each do |j| 
        if s[j] == "."
            if l == 0
                t = j + 1
                while (t < W) && (s[t] == ".") do
                    t += 1
                end
                l = t - j
            end
            k[j] += 1
            m[j] = l > m[j] < l #横方向に何マス照らすかを記憶
        else
            x = k[j] + m[j] #　今いるマスの横に照らすマスの個数　＋　今いるマスより上に位置する照らすマスの個数
            r = x if r < x 
            l = 0 #ｌをリセットして横方向のカウントを再開できるようにする
            k[j], m[j] = 0, 0
        end
    end
end

(0...W).each do |j|
    x = k[j] + m[j] 
    if x > r
        r = x
    end
end

puts r - 1