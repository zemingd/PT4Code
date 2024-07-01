a, b = gets.chomp.split(" ").map(&:to_i)
ans = 0
def ispalind(string)
    n = string.length
    for i in 0..(n - 1)/2
        if string[i] != string[n - 1 - i]
            return false
        end
    end
    return true
end
for i in a..b
    if ispalind(i.to_s)
        ans += 1
    end
end
print(ans)