n,k=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)
h.sort_by!{|x| -x}
puts (h.inject(&:+) - (k==0 ? 0 : h[0...k].inject(&:+)))