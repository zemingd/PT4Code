h={}
(N=gets.to_i).times{s=gets.chomp.chars.sort.join;h[s]||=0;h[s]+=1}
puts h.values.inject(0) {|ret, i| ret+i*(i-1)/2;}