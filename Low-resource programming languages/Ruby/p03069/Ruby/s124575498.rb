n=gets.to_i
s=gets.chomp
j=c=b=w=0
if s.count('#')==0 or s.count('.')==0
  puts 0
  exit
end
0.upto(n-2){|i| 
  if s[i].eql?("#")
    b+=1
  else
    w+=1
  end
  if b*1.0/(i+1) <= c*1.0/(j+1)
    j=i
    c=b
  end
}
puts c+s[(j+1)..-1].count('.')