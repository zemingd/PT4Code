n=gets.chomp.to_i
w=gets.chomp.split().map(&:to_i)
s=w.inject(0,&:+)
s1=0;s2=s
d=s
(0..(n-1)).each{|k|
  s1+=w[k]
  s2-=w[k]
  temp_d = (s1-s2).abs
  s = temp_d if temp_d < s
}
puts s

