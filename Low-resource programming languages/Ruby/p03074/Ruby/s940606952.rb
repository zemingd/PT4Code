n, k = gets.split.map(&:to_i)
s = gets.chomp

# compress
a = Array.new(n, 0)
first = true
nn = 0
for i in 0...n
    if first || s[i] == s[i-1]
        first = false
    else
        nn = nn + 1
    end
    a[nn] = a[nn] + (s[i] == "0" ? -1 : 1)
end
nn = nn + 1

#p a
# しゃくとり法
ans = 0
cur = 0
b = 0
e = 0
len = 0
while b < nn && e < nn do
#    print "#{b} #{e} - #{len} #{k} - #{cur} #{ans}\n"
    if a[e] >= 0
#       p "**1"
        # 1
        cur = cur + a[e] 
        ans = [ans, cur].max
        e = e + 1
    else
#       p "**0"
        # 0
        if len < k
            len = len + 1
        else
#           p "---"
            # 1 になるまで進める
            if a[b] >= 0
                # 1
                cur = cur - a[b]
                b = b + 1
                if b < nn
                    cur = cur + a[b]
                    b = b + 1
                end
            else
                # 0
                cur = cur + a[b]
                b = b + 1
            end
        end
        cur = cur - a[e] 
        ans = [ans, cur].max
        e = e + 1
    end
end

puts ans