_=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

min=a.min_by{|x|x.abs}

d=a.select{|x|x<0}.size

if(d%2==0)
    p a.map{|x|x.abs}.reduce(0,:+)
else
    p a.map{|x|x.abs}.reduce(0,:+) - 2*min.abs
end
