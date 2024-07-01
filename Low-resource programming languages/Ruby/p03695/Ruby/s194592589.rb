gets
list = gets.split.map(&:to_i).map{|i|i/400}
ans = (0..7).count{|i|list.include?(i)}
puts "%d %d"%[[ans,1].max, ans+list.count{|i|i>7}]