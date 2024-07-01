io = STDIN
x=io.gets.to_i
cand=[]
120.times.each do |i|
  cand << [i,i**5]
end
hash={}
cand.product(cand).each do |x,y|
  a,aa=x
  b,bb=y
  if a>=b
    hash[aa+bb]=[a,-b]
    hash[aa-bb]=[a,b]
  else
    hash[aa+bb]=[b,-a]
    hash[bb-aa]=[b,a]
  end
end
puts hash[x].join(" ")
