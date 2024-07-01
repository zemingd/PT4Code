a,v,b,w,t=`dd`.split.map &:to_i
if v-w == 0
  puts "NO"
  return
elsif (b-a).abs<=(w-v)*t && (b-a).abs%(w-v)
  puts "YES"
else
  puts "NO" 
end