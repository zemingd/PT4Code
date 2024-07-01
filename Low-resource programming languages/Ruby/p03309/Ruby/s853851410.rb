N = gets.to_i
As = gets.split.map(&:to_i)
Ass = As.map.with_index{|x,index| x - (index+1)}
mid = Ass.sort[N/2]

tmp = Ass.map{|x| (x-mid).abs}
tmp_sum = tmp.inject{|sum,x| sum + x}

puts tmp_sum