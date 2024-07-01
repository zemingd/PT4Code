a,v,b,w,t=$<.read.split.map &:to_i
puts (a-b).abs<=t*(v-w)?"YES":"NO"