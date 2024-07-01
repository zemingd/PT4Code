sum={}
while a=gets
x=a.downcase
x.length.times{|i|sum[x[i]]!=nil ? sum[x[i]]+=1 : sum[x[i]]=1}
end
[*'a'..'z'].each{|i|puts i+" : "+sum[i].to_s if sum[i] != nil
puts i+" : 0" if sum[i] == nil}