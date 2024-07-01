ret=0;ss=[]
(N=gets.to_i).times{s=gets.chomp.chars.sort;ret+=ss.count(s);ss.push(s)}
puts ret