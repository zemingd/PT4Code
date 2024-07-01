gets
count = gets.split.map{|it| it.to_i - 1}.each_with_index.count{|it, i| it != i}
puts count == 0 || count == 2 ? 'YES' : 'NO'
