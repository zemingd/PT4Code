s=STDIN.gets
a=s.split[0].to_i
b=s.split[1].to_i
af=a.to_f
bf=b.to_f
puts sprintf("%d %d %f\n",a/b,a%b,af/bf)