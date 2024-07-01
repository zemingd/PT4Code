s = gets.chomp.split(//)
t = gets.chomp.split(//)

sarr, tarr = [], []
flag = true

s.zip(t).each do |chars|
    
    if sarr.index(chars[0]) == nil and tarr.index(chars[1]) == nil
        sarr.push(chars[0])
        tarr.push(chars[1])
    elsif sarr.index(chars[0]) == tarr.index(chars[1])
        next
    else
        flag = false
        break
    end
end

puts flag ? "Yes" : "No"
