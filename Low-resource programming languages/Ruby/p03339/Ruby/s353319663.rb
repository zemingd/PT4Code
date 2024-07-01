n=gets.to_i
s=?.+(gets.chomp)+?.
e=w=0
dp_e=[]
dp_w=[]
s.chars.each{|c|
  if c== ?E
    e+=1
  elsif c==?W
    w+=1
  end
  dp_e<<e
  dp_w<<w
}
puts 1.upto(n).map{|i|
  dp_w[i-1]+e-dp_e[i]
}.min