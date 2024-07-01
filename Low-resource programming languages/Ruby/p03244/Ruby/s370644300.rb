io = STDIN
n=io.gets.to_i
V=io.gets.split.map(&:to_i)
even=Hash.new{|h,k|h[k]=0}
odd=Hash.new{|h,k|h[k]=0}
V.each_with_index do |v,i|
  if i.even?
    even[v]+=1
  else
    odd[v]+=1
  end
end
ev=even.sort_by{|h,v|v*-1}
od=odd.sort_by{|h,v|v*-1}
if ev.size==1 &&
   od.size==1
   if ev[0][0]==od[0][0]
     puts n/2
   else
     puts 0
   end
elsif ev.size==1 &&
   od.size!=1
   if ev[0][0]==od[0][0]
     puts n/2-od[1][1]
   else
     puts n/2-od[0][1]
   end
elsif ev.size!=1 &&
   od.size==1
   if ev[0][0]==od[0][0]
     puts n/2-ev[1][1]
   else
     puts n/2-ev[0][1]
   end
else
  if ev[0][0]==od[0][0]
    if ev[0][1]==od[0][1]
      if ev[1][1]==od[1][1]
        puts n-ev[0][1]-od[1][1]
      elsif ev[1][1]>od[1][1]
        puts n-ev[1][1]-od[0][1]
      else
        puts n-ev[0][1]-od[1][1]
      end
    elsif ev[0][1]>od[0][1]
      puts n-ev[0][1]-od[1][1]
    else
      puts n-ev[1][1]-od[0][1]
    end
  else
    puts n-ev[0][1]-od[0][1]
  end
end
