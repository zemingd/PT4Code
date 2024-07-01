s = gets.chomp.split(//)
t = gets.chomp.split(//)
sarr, tarr = [], []
flag=true
s.zip(t).each do |i,j|
    
    if sarr.index(i) == nil and tarr.index(j) == nil
        sarr.push(i)
        tarr.push(j)
    elsif sarr.index(i) == tarr.index(j)
        next
    else
        flag = false
        break
    end
end

puts flag ? "Yes" : "No"
