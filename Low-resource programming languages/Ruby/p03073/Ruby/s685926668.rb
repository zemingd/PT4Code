s=gets.chomp
bw=0
wb=0
s.size.times do |i|
  if (i%2==0) ^ (s[i]=="0")
    bw+=1
  else
    wb+=1
  end
end
puts [bw,wb].min
