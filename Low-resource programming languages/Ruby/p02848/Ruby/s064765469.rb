n=gets.to_i
s=gets.chomp.to_s
puts s
ans=[]
s.size.times do |i|
  puts s[i]
  ans[i]= ((s[i].ord+n)>"Z".ord) ? (s[i].ord+n-26).chr : (s[i].ord+n).chr
  puts ans[i]
end
puts ans.join
