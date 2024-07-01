a = gets.chomp.to_i
b = []
b = gets.chomp.split("")
#puts a
#puts b.join("")
s = 0
t = 0
cnt = 3 * 10**5
for i in 1..a-1 #1文字目
    if b[i] != "W"
          t = t+1
    end
end
if (s + t) <= cnt
    cnt = (s + t)
end
#puts t
for i in 1..a-1 #2文字目から
    if b[i] != "W"
    t = t -1
    end
    if b[i-1] != "E"
        s = s + 1
    end
    #puts s + t
    if (s + t) <= cnt
        cnt = (s + t)
    end
end
puts cnt