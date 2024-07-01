k = gets.split(" ")[1].to_i
i = gets.split("").map(&:to_i)
m = Array.new
i.count.times{|n|
if n == 0 then
   m.push([i[0],1])
else
    if i[n] == i[n-1] then
        next
    else
        m.push([i[n],n+1])
    end
    end
}
kotae = Array.new
m.count.times{|n|
a = n+2*k
if m[a]== nil then
    next
end

  if m[n][0]== 1 and m[a+1]== nil then
    next
  end

if m[n][0]== 0 then
    kotae.push(m[a][1] -m[n][1])
else
    kotae.push(m[a+1][1] -m[n][1]+1)
end
}
print kotae.max
if kotae==[] then
  print i.count
end