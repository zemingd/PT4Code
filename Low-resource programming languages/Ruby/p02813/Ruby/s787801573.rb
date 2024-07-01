n = gets.to_i
ps = gets.split.map(&:to_i)
qs = gets.split.map(&:to_i)

len = Array.new
n.times{ |i|
    len.push(i+1)
}
#-----------------------------------
c=1;pn=0;qn=0;
len.permutation{ |x|
    if x == ps then pn = c end
    if x == qs then qn = c end
    c+=1
    if pn > 0 && qn > 0 then break end
}
p (pn - qn).abs