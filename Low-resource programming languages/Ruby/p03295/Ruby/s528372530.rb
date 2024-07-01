io = STDIN
n,m=io.gets.split.map(&:to_i)
$req=[]
m.times do
  $req<<io.gets.split.map(&:to_i)
end
$hash=Hash.new{|h,k|h[k]=[]}
$req.each do |from,to|

  (from..to).each_cons(2) do |i,j|
    $hash[[i,j]] << [from,to]
  end
end
$cnt={}
$hash.each do |k,v|
  $cnt[k]=v.size
end
cnt=0
$cnt.sort_by{|k,v|-v}.each do |k,v|
  if $req.size != ($req-$hash[k]).size
    cnt+=1
    $req=$req-$hash[k]
  end
  break if $req.size==0
end
puts cnt
