m,p,q=gets.split.map(&:to_i);man=[]
m.times{man.push(p)}
q.times{ans=(gets.to_i);m.times{|t|t==ans||(man[t]-=1)}}
m.times{|v|man[v]>0 ? (puts "Yes") : (puts "No")} 