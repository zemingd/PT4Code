n,k=gets.split;a=[*0..9]-gets.split.map(&:to_i)
idx1=(0...n.size).find{|i|!a.find{|e|e==n[i].to_i}}
(puts n;exit)if !idx1
idx2=idx1.downto(0).find{|i|a.find{|e|e>n[i].to_i}}||-1
if idx2<0
$><<a[0]>0 ? a[0] : a[1]
else
$><<n[0...idx2]<<a.find{|e|e>n[idx2].to_i}
end
puts a[0].to_s*(n.size-idx2-1)