s=gets.chomp
t=gets.chomp
s2=s.split('').sort.uniq
f=true
t.split('').sort.uniq.each{|c| (f=false;break) if not s2.include?(c)}
unless f
  puts -1
  exit
end
x=0
i=0 # 0.upto(t.size-1)
tn=1
while true
  li=0
  x=s.index(t[i], li)
  while x
    if i==t.size-1
      puts (tn-1)*s.size+x+1
      exit
    else
      i+=1
    end
    li=x+1
    
    x=s.index(t[i],li)
  end
  tn+=1
end