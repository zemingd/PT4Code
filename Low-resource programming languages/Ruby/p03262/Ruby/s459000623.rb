io = STDIN
n,x=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
ar.map!{|a|(x-a).abs}
puts ar.inject(ar[0]){|s,i|s.gcd(i)}
