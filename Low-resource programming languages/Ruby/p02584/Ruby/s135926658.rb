x,k,d=gets.split.map(&:to_i)
if x==k && k==x && d==x
p d
exit
end

times=x.div(d)
if k<times
result=(x-k*d).abs
else
result=x%d
end
p result
    