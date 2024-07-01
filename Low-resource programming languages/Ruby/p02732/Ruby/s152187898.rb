N,*A = $<.read.split.map &:to_i
H = Hash.new(0)
A.each {|i| H[i] += 1}
t = 0
H.keys.each {|i|
  v = H[i]
  t += x=v*(v-1)/2
  H[i] = (v-1)*(v-2)/2 - x
}
puts A.map {|i| t+H[i]}