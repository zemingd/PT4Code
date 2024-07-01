s=STDIN.gets
a=s.split[0].to_i
b=s.split[1].to_i
c=s.split[2].to_i

ret=0
a.upto(b){ |n|  ret += 1 if c % n == 0 }

puts ret