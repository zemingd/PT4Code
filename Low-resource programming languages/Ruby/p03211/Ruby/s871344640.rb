#n, m = gets.chomp.split.map(&:to_i)
#ary = []; n.times { cakes << gets.chomp.split.map(&:to_i).to_a } 
#def cb(i);	i==1 ? 1 : -1;end
n = gets.chomp.to_i.to_s
l = n.length
min = 1000
0.step(l-3,1) {|i|
   min = (753 - n[i,3].to_i).abs < min ? (753 - n[i,3].to_i).abs : min
}
p min