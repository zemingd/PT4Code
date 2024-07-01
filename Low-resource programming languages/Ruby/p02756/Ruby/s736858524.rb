s=gets.chomp
q=gets.to_i
pre,suf="",""
q.times{
a=gets.split
if a[0].to_i==1
pre,suf=suf,pre
elsif a[1].to_i==1
pre<<a[2]
else
suf<<a[2]
end
}
puts pre.reverse+s+suf