a, b=gets.split.map &:to_i
x,y=[a*12.5, b*10.0].minmax
puts (((y.to_i-10)..(x.to_i+10)).select{|i| (i*0.08).to_i==a && (i*0.1).to_i==b}.min || -1)
