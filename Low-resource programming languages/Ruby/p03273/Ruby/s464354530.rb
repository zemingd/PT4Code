h,w=gets.split.map(&:to_i)
a=Array.new
h.times do a.push(gets.chomp.split("")) end
for i in 0...w
    if a.all?{|e|e[i]=="."}
        a.each{|e|e.slice!(i)}
    end
end
a.each do |e|
    if e.all?{|f|f=="."}
        a.delete e
    end
end
if a.size==1
    a[0].delete(".")
end
a.each do |elem|
    puts elem.join
end
