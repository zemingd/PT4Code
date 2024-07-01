(A,V),(B,W),(T,_) = $<.map{|ln| ln.split.map(&:to_i) }
puts((V-W)*T<(A-B).abs ? 'NO' : 'YES')
