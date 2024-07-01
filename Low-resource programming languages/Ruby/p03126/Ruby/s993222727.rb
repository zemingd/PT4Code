d,a=[],0;n=gets.chomp.split.map(&:to_i);n[0].times{dd=gets.chomp.split.map(&:to_i).drop(1);d<< dd}
d.flatten!
n[1].times{|i|d.count(i+1)==n[0]? a+=1:nil}
p a