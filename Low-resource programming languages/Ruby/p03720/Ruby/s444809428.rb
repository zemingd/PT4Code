n,m=gets.split.map(&:to_i)
abs=m.times.map{gets.split.map(&:to_i)}
ans=[0]*n
abs.each do |ai,bi|
  ans[ai-1]+=1
  ans[bi-1]+=1
end
puts ans
