io = STDIN
n=io.gets.to_i
ar=n.times.map{io.gets.split}
    .map
    .with_index(1){|(s,po),i|[s,po.to_i,i]}
    .sort_by{|s,po,no|[s,-po]}
puts  ar.map{|s,po,no|no}
