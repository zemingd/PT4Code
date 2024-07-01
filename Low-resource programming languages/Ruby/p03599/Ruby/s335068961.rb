A,B,C,D,E,F = gets.split.map &:to_i
# A,B,C,D,E,F=1,2,10,20,15,200
def list_sums a, b
  g = a.gcd b
  a /= g
  b /= g
  as=b.times.map{|i|i*a}
  bs=a.times.map{|i|i*b}
  hoge=as.product(bs).map{|a,b|a+b}.select{|i|i<=a*b}.uniq.sort
  hoge.map{|a|a*g}
end


waters = list_sums A, B
gcd = C.gcd D
wgcd = A.gcd B
waters << waters.last+wgcd while waters.last*100 < F
sugars = list_sums C, D
hoges = waters.map do |w|
  # sugar / (w*100) < E / 100
  max_sugar = E*w
  if max_sugar >= sugars.last
    sugar = [(max_sugar/gcd).floor*gcd, sugars.last].max
  else
    sugar = sugars.select{|a|a<=max_sugar}.last
  end
  [w*100+sugar, sugar]
end

puts hoges.select{|a|a[0]<=F}.max{|a|a[1].fdiv a[0]}.join(' ')
