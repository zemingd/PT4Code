s = gets.chomp
k = gets.to_i
i_top = 123
s.split('').each_with_index do |x,i|
    d = i_top-x.ord
    if d <= k
        s[i]='a'
        k-=d
    end
    if i==s.length-1 && k!=0
        s[i] = (x.ord+k).chr
    end
end
puts s