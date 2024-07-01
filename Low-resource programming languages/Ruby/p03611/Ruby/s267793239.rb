N=gets.to_i
a = gets.split.map(&:to_i)

h = Hash.new(0)

a.each{|t|
  h[t] += 1
}

w = [h[0], h[0]+h[1]]
(100000-1).times{|i|
  w << w[i+1] + h[i+2] 
}

q = [w[2]]
(100000-2).times{|i|
  q << w[i+3] - w[i]
}

puts q.max