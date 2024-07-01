S = gets.to_s
len = S.size
ans = Float::INFINITY
s = 0
e = 2
while e != len
    ans = [(753 - S[s..e].to_i).abs,ans].min
    s = s+1
    e = e+1
end

puts ans
