gets
x=ARGF.map{|s|s.split().map(&:to_i)}

r = x.combination(2).select {|a,b| t = a.zip(b).map {|ea,eb|(ea-eb)**2}.reduce(:+); Math.sqrt(t).to_i**2 == t }.size
p r