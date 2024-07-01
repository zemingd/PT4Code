io = STDIN
n,x=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
if x==1
  puts (ar[0]-x).abs
else
  if ar.include? x
    p ar.each_cons(2).map {|a,b|b-a}.each_cons(2).map{|a,b|a.gcd b}.min
  else
    ar1 = ar.select{|a|a<x}+[x]+ar.select{|a|a>x}
    puts ar1.each_cons(2).map {|a,b|b-a}.each_cons(2).map{|a,b|a.gcd b}.min
  end
end
