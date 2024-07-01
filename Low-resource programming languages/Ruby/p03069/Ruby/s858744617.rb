n=gets.to_i
s=gets.chomp.to_s
cnt=0
(n-1).times do |i|
  if s[i]=='#' && s[i+1]=='.'
    cnt +=1
  end
end
kuro=s.count('#')
siro=s.count('.')
ary=s.split('#.')
if kuro==siro && ary.length != 2
  puts kuro
elsif ary.length == 2
  puts [ary[0].length,ary[1].length].min
else
  puts cnt
end