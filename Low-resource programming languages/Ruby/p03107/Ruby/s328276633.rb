s=gets.chomp.split("").map(&:to_i).sort
n=s.size
c0=0
s.each do |si|
  if si==0
    c0+=1
  else
    break
  end
end
c1=n-c0
if c0==c1
  puts 0
else
  puts [c0,c1].min*2
end