X=gets
FX=X.split("").inject{|sum, tmp| sum.to_i + tmp.to_i }
puts X.to_i % FX == 0 ? "yes" : "no"