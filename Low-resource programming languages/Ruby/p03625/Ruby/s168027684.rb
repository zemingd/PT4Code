gets
a=gets.split.map(&:to_i)
b=Array.new
while(!a.empty?)
    if a.count(a.max)>3
        b.push(a.max)
        b.push(a.max)
    elsif a.count(a.max)>1
        b.putsh(a.max)
    end
    a.delete(a.max)
    if b.count==2
        break
    end
end


if b.count==2
    puts "#{b[0]*b[1]}"
else
    puts "0"
end