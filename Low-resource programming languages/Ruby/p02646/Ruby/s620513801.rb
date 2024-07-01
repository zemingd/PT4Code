a, v, b, w, t = [gets,gets,gets].join().split().collect{|i|i.to_i}
you = t * v + a
me  = t * w + b
puts you >= me ? "YES" : "NO"
