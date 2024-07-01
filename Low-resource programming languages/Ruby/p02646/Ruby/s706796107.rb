a,v,b,w,t=`dd`.split.map &:to_i
if v-w == 0
  puts "NO"
  return
elsif (b-a).abs<=(v-w)*t && (b-a).abs%(v-w)
  puts "YES"
else
  puts "NO" 
end