n=gets.to_i
a=gets.split.map(&:to_i)
b=Array.new
while(a.count>0)
    if a.count(a.max)>1
        b.push(a.max)
    end
    if b.count==2 then break end
    a.delete(a.max)
end
if b.count<2
    puts "0"
else
    puts "#{b[0]*b[1]}"
end