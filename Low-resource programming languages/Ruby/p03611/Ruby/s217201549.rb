n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)
a.each{|a_| h[a_] +=1}
p h.each_key.map{|k| h[k.pred] + h[k] + h[k.succ]}.max