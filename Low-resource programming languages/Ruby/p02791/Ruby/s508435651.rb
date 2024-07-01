N,*P = $<.read.split.map(&:to_i)
p P.inject([0,P[0]]){|(sum,min),p| p <= min ? [sum+1,p] : [sum,min] }[0]
