gets
a=gets.split.map(&:to_i).sort!{|s,t|t<=>s}
b=Array.new
while(!a.empty?)
    if a.count(a[0])>3
        b.push(a[0])
        b.push(a[0])
    elsif a.count(a[0])>1
        b.push(a[0])
    end
    a.delete(a[0])
    if b.count==2
        break
    end
end


if b.count>1
    puts "#{b[0]*b[1]}"
else
    puts "0"
end