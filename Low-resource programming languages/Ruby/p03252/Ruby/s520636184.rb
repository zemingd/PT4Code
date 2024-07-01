s = gets.chomp
t = gets.chomp
sa = s.split(//)
ta = t.split(//)
s1 = [sa.length]
t1 = [ta.length]
len = sa.length-1
b1 = true
len.times do |i|
    k = i+1
    while k<len
        if sa[i]==sa[k]
            s1[i] = 1
            s1[k] = 1
        end
        if ta[i].eql?(ta[k])
            t1[i] = 1
            t1[k] = 1
        end
        k=k+1
    end
end

len.times do |i|
    if s1[i] != t1[i]
        b1 = false
    end
end

if b1
    puts "Yes"
else
    puts "No"
end