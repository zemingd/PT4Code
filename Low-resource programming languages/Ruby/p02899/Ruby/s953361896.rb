n=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

r = a.each_with_index.sort.map{|_,i|i+1}
print r.join(" ")