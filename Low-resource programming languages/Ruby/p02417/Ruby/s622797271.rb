x=gets
sum={}
x.length.times{|i|
sum[x[i]]+=1 if sum[x[i]] != nil
sum[x[i]]=1 if sum [x[i]] == nil
}
[*'a'..'z'].each{|i|
puts i+" : "+sum[i].to_s if sum[i] != nil
puts i+" : 0" if sum[i] == nil
}