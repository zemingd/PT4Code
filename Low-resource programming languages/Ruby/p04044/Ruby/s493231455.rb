fl=gets.chomp.split(" ")
N=fl[0].to_i
L=fl[1].to_i
al=Array.new(N)
0.upto(N-1){|i|
  al[i]=gets.chomp
}
puts al.sort.join('')