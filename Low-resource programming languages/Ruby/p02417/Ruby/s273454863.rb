s=""
t="."
while true
    t=gets
    if t==nil
        break
    else
        s+=t.downcase
    end
end
('a'..'z').map{|c|[c,s.count(c)]}.each{|e|puts "#{e[0]} : #{e[1]}"}
