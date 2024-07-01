a,b,c,k = gets.chomp.split.map(&:to_i)
s = Array.new(a,1) +  Array.new(b,0)  +  Array.new(c,-1)
s.sort!.reverse!
puts s[0..k-1].inject(:+)