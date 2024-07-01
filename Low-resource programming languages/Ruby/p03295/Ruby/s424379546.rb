io = STDIN
n,m=io.gets.split.map(&:to_i)
$req=[]
m.times do
  $req<<io.gets.split.map(&:to_i)
end
$req.sort_by!{|a,b|b}
cnt,right_limit=0,0
$req.each do |a,b|
  if right_limit<=a
    right_limit=b
    cnt+=1
  end
end
puts cnt
