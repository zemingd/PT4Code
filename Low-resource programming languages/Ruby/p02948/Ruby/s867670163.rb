io = STDIN
N,M=io.gets.split.map(&:to_i)
ab=N.times.map{io.gets.split.map(&:to_i)}
sort=ab.select{|a,b|a<<M}
     .sort_by{|a,b|-b*10**4-a}
ar=Array.new(M+1,0)
sort.each_with_index do |(a,b),i|
  if ar[i]==0 &&
     a+i<=M
    ar[i]=b
  end
end
puts ar.inject(:+)
