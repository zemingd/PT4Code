h,w=gets.split.map(&:to_i)
a=Array.new
h.times do a.push(gets.chomp!) end
a.each do |elem|
    if elem.count(".")==elem.size
        a.delete(elem)
    end
end
for i in 0..w
    cnt=0
    a.each do |elem| 
        if elem[i]=="." then cnt+=1 end
    end
    if cnt==a.size then a.each { |elem| elem.slice!(i) } end
end
if a.size==1 
    a[0].delete!(".")
end
a.each do |elem|puts(elem) end