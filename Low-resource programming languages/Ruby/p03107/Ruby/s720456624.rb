s=gets.chomp.split("").map(&:to_i).sort
n=s.size
count0=0
s.each do |si|
  if si==0
    count0+=1
  else
    break
  end
end
count1=n-count0
if count0==count1
  puts n
else
  puts [count0,count1].min*2
end
