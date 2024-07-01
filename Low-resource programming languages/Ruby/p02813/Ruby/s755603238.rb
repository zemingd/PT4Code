n=gets.to_i
a=nil
b=nil
count = 0
s1=gets.split.join
s2=gets.split.join
(('1'*n).to_i(n+1)..("#{n}"*n).to_i(n+1)).each do |i|
  next if i.to_s(n+1).split('').uniq.size!=n || i.to_s(n+1).count('0')>0
  count+=1
  a=count if s1==i.to_s(n+1)
  b=count if s2==i.to_s(n+1)
  break if a&&b
end
p b-a
