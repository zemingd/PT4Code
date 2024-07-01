io = STDIN
n=io.gets.to_i
t,a=io.gets.split.map(&:to_i)
h=io.gets.split.map(&:to_i)
def temp(t,x)
  (t-x*0.006)
end
ar= h.map.with_index(1){|hh,i|[(temp(t,hh)-a).abs,i]}
puts ar.min_by{|diff,no|diff}[1]
