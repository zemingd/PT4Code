io = STDIN
x=io.gets.to_i
ar =50.times.map {|i|i**5}
hash={}
aa=ar.product(ar).each do |a,b|
  hash[a+b]=[a,-b]
  hash[a-b]=[a,b]
  hash[b-a]=[b,a]
end
puts hash[x].join(" ")
