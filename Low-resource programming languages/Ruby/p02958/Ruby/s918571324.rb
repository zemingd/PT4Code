N=gets.to_i
arrayp=gets.split.map(&:to_i)
diff=arrayp.select.with_index{|p, i| p != i+1}.count
puts diff <= 2 ? 'YES' : 'NO'