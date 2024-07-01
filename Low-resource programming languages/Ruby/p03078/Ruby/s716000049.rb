k = gets.split(" ").map{|t| t.to_i}
a = gets.split(" ").map{|t| t.to_i}.sort{|x,y| y<=>x}
b = gets.split(" ").map{|t| t.to_i}.sort{|x,y| y<=>x}
c = gets.split(" ").map{|t| t.to_i}.sort{|x,y| y<=>x}
 
if k[0] >= k[3] then
  ak = k[3]
else
  ak = k[0]
end
  
if k[1] >= k[3] then
  bk = k[3]
else
  bk = k[1]
end
  
if k[2] >= k[3] then
  ck = k[3]
else
  ck = k[2]
end
  
kari = Array.new
ak.times{|n|
bk.times{|m|
    kari.push(a[n]+b[m])
    }}
 
  
if kari.count >= k[3] then
  kk = k[3]
else
  kk = kari.count
end
  
kari.sort!{|x,y| y<=>x}
kotae = Array.new
kk.times{|n|
    ck.times{|m|
        kotae.push(kari[n]+c[m])
        }}
 
kotae.sort!{|x,y| y<=>x}
k[3].times{|t|
puts kotae[t]
}
