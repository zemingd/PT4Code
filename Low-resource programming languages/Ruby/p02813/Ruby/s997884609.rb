def fact(n)
  [*1..n].inject(1){|f,i| f*i}
end

def rank(n,array)
  nums=[*1..n]
  rank=0
  (n-1).times do |i|
    j=nums.index(array[i])
    if i==n-2
      rank+= j==0 ? 1:2
    else
      rank+=fact(n-1-i)*j
      nums.delete(array[i])
    end
  end
  return rank
end

n=gets.to_i
ps=gets.split.map(&:to_i)
qs=gets.split.map(&:to_i)

puts (rank(n,ps)-rank(n,qs)).abs
