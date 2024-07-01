A=[]
gets.to_i.times{A.push(gets.to_i)}
p A.inject(:lcm)