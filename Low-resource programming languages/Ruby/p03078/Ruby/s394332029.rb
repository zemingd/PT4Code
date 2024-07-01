k = gets.split(" ").map{|t| t.to_i}
a = gets.split(" ").map{|t| t.to_i}.sort{|x,y| y<=>x}
b = gets.split(" ").map{|t| t.to_i}.sort{|x,y| y<=>x}
c = gets.split(" ").map{|t| t.to_i}.sort{|x,y| y<=>x}
 
if k[0] >= k[3] then
    a= a.take(k[3])
end
 
if k[1] >= k[3] then
    b= b.take(k[3])
end
 
if k[2] >= k[3] then
    c= c.take(k[3])
end
 
kari = Array.new
a.each{|an|
b.each{|bn|
    kari.push(an+bn)
}
}
 
kari.sort!{|x,y| y<=>x}
if kari.count >= k[3] then
  kari= kari.take(k[3])
end