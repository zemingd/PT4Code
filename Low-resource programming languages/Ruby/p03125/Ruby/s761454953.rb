N, M, *rest = $stdin.read.split
a = gets.split.map(&:to_i)
(N-1).times {
  b = gets.split.map(&:to_i) 
  b.each do |f|
    a.select!{|e| e == f} 
  end
}
 
puts a.length