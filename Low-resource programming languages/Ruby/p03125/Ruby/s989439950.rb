N, M  = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
(N-1).times {
  b = gets.split.map(&:to_i) 
  b.drop(1)
  b.each do |f|
    a.select!{|e| e == f} 
  end
}
 
puts a.length