gets
a=gets.map(&:to_i)
b=gets.map(&:to_i)
c=gets.map(&:to_i)
r=0
prev=nil
for a_i in a
r+=b[a_i-1] + if prev && prev.succ==a_i  then c[prev-1] else 0 end
prev=a_i
end