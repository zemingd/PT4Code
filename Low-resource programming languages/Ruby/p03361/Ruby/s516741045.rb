h,w = gets.split.map(&:to_i)
s = h.times.map{"."+gets.chomp+"."}.unshift("."*(w+2)).push("."*(w+2))
d = [1,0,-1,0]
ans = true
for i in 1..h
    for j in 1..w
        if s[i][j] == "#"
            ok = false
            for k in 0..3
                ok = true if s[i+d[k]][j+d[k^1]] == "#"
            end
            ans = false if !ok
        end
    end
end
puts ans ? "Yes" : "No"