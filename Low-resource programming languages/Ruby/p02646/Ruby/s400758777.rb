a, v, b, w, t = [gets,gets,gets].join().split().collect{|i|i.to_i}
if a < b
  you = t * v + a
  me  = t * w + b
  puts you >= me ? "YES" : "NO"
else
  you = - t * v + a
  me  = - t * w + b
  puts you <= me ? "YES" : "NO"
end