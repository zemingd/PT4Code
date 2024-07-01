a,v,b,w,t=`dd`.split.map &:to_i
puts (b-a).abs<=(v-w)*t ? "YES" : "NO"