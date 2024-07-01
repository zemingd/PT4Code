n=gets.chomp.to_i
p=gets.chomp.split.map(&:to_i)
cnt=0
n.times{|i|
  buf2= i==0 ? p[0..i] : p[0..(i-1)]
  buf=buf2.select{|e| e>=p[i] }

  cnt+=1 if buf.length!=0
}
puts cnt