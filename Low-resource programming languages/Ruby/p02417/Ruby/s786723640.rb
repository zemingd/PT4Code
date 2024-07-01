a=Array.new(26,0)

s=""
while STDIN.eof == false
        s+=gets.downcase
        break if s.match(/^$/)
end
s=s.unpack("C*")
for x in 0..s.length-1 do
        i=(s[x]-"a".ord)
        if i>=0 then a[i]=a[i]+1 end
end
for i in 0..25 do
        printf("%s : %d\n",(97+i).chr,a[i])
end