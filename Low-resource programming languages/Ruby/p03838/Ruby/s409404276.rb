x,y = gets.chomp.split.map(&:to_i)
cnt=0
if y.abs >= x.abs
    cnt+=1 if x<0
    cnt+=y.abs-x.abs
    cnt+=1 if y<0
else
    cnt+=1 if x>0
    cnt+=x.abs-y.abs
    cnt+=1 if y>0
end
puts cnt