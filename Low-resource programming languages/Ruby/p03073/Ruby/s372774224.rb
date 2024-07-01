s = gets.chomp.split("")
n = s.size
bwb = 0
for i in 1..n do
    if (i.odd? and s[i-1] == "0") or (i.even? and s[i-1] == "1")
        bwb += 1
    end
p [bwb, n-bwb].min