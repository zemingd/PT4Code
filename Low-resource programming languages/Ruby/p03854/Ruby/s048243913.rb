s=gets.chop
k=s.size
while k>0
    if s[k-5, 5]=='dream' or s[k-5, 5]=='erase'
        k-=5
    elsif s[k-6, 6]=='eraser'
        k-=6
    elsif s[k-7, 7]=='dreamer'
        k-=7
    else
        break
    end
end
puts (k>0 ? "NO" : "YES")
