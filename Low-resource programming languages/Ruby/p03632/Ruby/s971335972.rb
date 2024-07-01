a,b,c,d=gets.split.map(&:to_i)
n=[b,d].min-[a,c].max
puts n>0 ? n:0
