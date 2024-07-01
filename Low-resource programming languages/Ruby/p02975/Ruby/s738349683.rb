n = gets.to_i
a = gets.split.map(&:to_i)

flag = false
if n==3
  flag = true
elsif n%3==0
  as = a.sort.each_slice(n/3).map(&:to_a).map(&:uniq)
  if as.map(&:count) == [1,1,1]
    ass = as.map(&:pop)
    flag = true if ass[0] ^ ass[1] == ass[2]
  end
else
  flag = true if a.uniq == [0]
end

puts flag ? :Yes : :No