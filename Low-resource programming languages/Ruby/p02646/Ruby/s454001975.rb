a,v,b,w,t=`dd`.split.map &:to_i
puts b-a<=(v-w)*t && (b-a)%(v-w) ? "YES" : "NO"