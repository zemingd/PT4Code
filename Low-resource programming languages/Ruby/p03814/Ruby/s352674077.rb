# Your code here!
s=gets.chomp()
ss=s.unpack("C*")
l=s.length()
ans=1

for i in 0..l-1
    if ss[i]==65
        ans=ans-i
    elsif ss[i]==90
        ans=ans+i
    end
end

puts(ans)