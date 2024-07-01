n=gets.to_i
count=0
all=[]
5.times.each do
    all<<gets.to_i
end

min=all.min
n=(1.0*n/min).ceil
puts n+4