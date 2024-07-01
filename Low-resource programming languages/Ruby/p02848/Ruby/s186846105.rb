n=gets.to_i
s=gets.chomp.to_s
ans=[]
s.size.times do |i|
  ans[i]= ((s[i].ord+n)>"Z".ord) ? (s[i].ord+n-26).chr : (s[i].ord+n).chr
end
puts ans.join
