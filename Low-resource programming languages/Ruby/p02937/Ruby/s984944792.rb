S=gets.strip.codepoints
T=gets.strip.codepoints
judge=true
ss=S.size
ts=T.size

if !(T - S).empty?
    puts -1
    exit 0
end

i=0
cnt=0
while true
    cnt+=1 if S[i % ss]==T[cnt]
    i+=1
    break if cnt==ts
end
puts i
