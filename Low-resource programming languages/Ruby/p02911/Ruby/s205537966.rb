io = STDIN
n,k,q=io.gets.split.map(&:to_i)
ar=q.times.map{io.gets.to_i}
score=Array.new(n,k)
hash=Hash.new{|h,k|h[k]=0}
(1..n).each {|a|hash[a]=0}
ar.each{|a|hash[a]+=1}
(1..n).each do |a|
  puts k-q+hash[a]>=1 ?  'Yes' : 'No'
end
