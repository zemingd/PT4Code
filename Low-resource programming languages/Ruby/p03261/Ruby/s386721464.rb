w=[]
n=gets.to_i.times{w<<gets.chop}
puts (1..(n-2)).all?{|i|w[i][-1]==w[i+1][0]}&&w.uniq.size==n ?:Yes: :No