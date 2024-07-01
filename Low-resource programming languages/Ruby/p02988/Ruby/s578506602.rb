n=gets.to_i
ps=gets.split.map(&:to_i)
cnt=0
ps.each_cons(3) do |a,b,c|
  if [a,b,c].max != b && [a,b,c].min != b
    cnt +=1
  end
end
puts cnt