n=gets.to_i
t,a = gets.split.map(&:to_i)
h=gets.split.map{|h| ((t - h.to_f*0.006).abs-a.abs).abs}
p h.find_index(h.min) + 1