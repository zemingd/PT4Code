n=[0]*9
gets
gets.split.map(&:to_i).each do |a|
  n[[a/400, 8].min] += 1
end
m=n[0...-1].count{|i|i!=0}
puts [[m,1].max, m+n[-1]]*" "
