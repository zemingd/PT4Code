N,*A = $<.read.split.map &:to_i
H = Hash.new(0)
A.each {|i| H[i]+=1}
t = 0
H.each {|k,v|
  t += v*(v-1)/2
  H[k] = v-1
}
puts A.map {|i| t-H[i]}