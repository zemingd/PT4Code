N=gets.to_i
ps=gets.split.map(&:to_i)
qs=gets.split.map(&:to_i)
idx=1
a=0
b=0
(1..N).to_a.permutation(N) do |es|
   a=idx if ps==es 
   b=idx if qs==es 
   idx+=1
end
puts (a-b).abs