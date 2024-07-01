a,v,b,w,t=`dd`.split.map &:to_i
if v-w == 0
  puts "NO"
  return
elsif (b-a).abs<=(v-w).abs*t && (b-a)%(v-w)
  puts "YES"
else
  puts "NO" 
end