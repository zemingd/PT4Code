K = gets.split(" ")[1].to_i
i = gets.split("").map(&:to_i)
m = Array.new
i.count.times{|n|
if n == 0 then
   m.push([i[0],0])
else
    if i[n] == i[n-1] then
        next
    else
        m.push([i[n],n])
    end
end
  }
  
m.push([-1,i.count])
kotae =[]
(m.count-1).times{|c|
    (K+1).times{|k|
     if m[c+2*k]==nil then next end
       if m[c][0]==1 and m[c+2*k+1]==nil then next end
    if m[c][0]==0 then
        kotae.push(m[c+2*k][1]-m[c][1])
    else
        kotae.push(m[c+2*k+1][1]-m[c][1])
    end
    }
}
print kotae.max