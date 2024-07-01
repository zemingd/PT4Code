def g
gets.to_i end
g.times{puts (a=g+g)>10**80?:overflow:a}