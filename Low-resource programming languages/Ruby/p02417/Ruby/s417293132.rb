x=gets
sum={}
x.length.times{|i|sum[x[i].downcase]!=nil ? sum[x[i].downcase]+=1 : sum[x[i].downcase]=1}
[*'a'..'z'].each{|i|puts i+" : "+sum[i].to_s if sum[i] != nil
puts i+" : 0" if sum[i] == nil}