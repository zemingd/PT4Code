N,M=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort

#N,M=10**5,10**5
#a=N.times.map{rand(10**8..10**9)}.sort

t = [a.pop >> 1]
(M-1).times do
  if a.empty? || t[-1] > a[-1]
    x = t.pop >> 1
  else
    x = a.pop >> 1
  end
  index = t.bsearch_index{|num| num > x } || -1
  t.insert(index, x)
end
p (a+t).inject(:+)
