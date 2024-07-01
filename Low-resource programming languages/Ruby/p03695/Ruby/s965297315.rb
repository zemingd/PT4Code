gets
list = gets.split.map(&:to_i).map{|i|i<3200?i/400:8}.sort
ans = (0..7).count{|i|list.include?(i)}
puts "%d %d"%[ans, [ans+list.count(8),8].min]