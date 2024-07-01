gets
a=gets.split.map(&:to_i)
b=Array.new
while(!a.empty?)
    c=a.max
    if a.count(c)>3
        b.push(c)
        b.push(c)
    elsif a.count(c)>1
        b.push(c)
    end
    a.delete(c)
    if b.count==2
        break
    end
end


if b.count>1
    puts "#{b[0]*b[1]}"
else
    puts "0"
end