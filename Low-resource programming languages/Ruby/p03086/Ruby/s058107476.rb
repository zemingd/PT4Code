def check(s)
    s.chars do |c|
        if "AGCT".include?(c).!
            return false
        end
    end
    return true
end

s = gets.chomp
n = s.size
ans = ""
n.times do |i|
    (i + 1).upto(n) do |j|
        t = s[i...j]
        if check(t) && ans.size < t.size
            ans = t
        end
    end
end
puts ans.size