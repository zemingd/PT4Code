H, W = gets.chomp.split(" ").map(&:to_i)
A = []
H.times{
  s = gets.chomp
  A << s if s.include?('#')
}

(W-1).downto(1){|i|
  A.map!{|a| a[0..(i-1)] + a[(i+1)..-1]} if A.all?{|a| a[i] == '.'}
}
A.map!{|a| a[1..-1]} if A.all?{|a| a[0] == '.'}

A.each{|a| puts a}
