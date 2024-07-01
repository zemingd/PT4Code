gets
a={}
$<.map{|x|a[x]=a[x].to_i+1}
p a.select{|x|a[x]%2>0}.size