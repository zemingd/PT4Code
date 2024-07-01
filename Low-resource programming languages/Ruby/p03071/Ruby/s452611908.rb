s = gets.chomp!
n = s.size
r=0
(n/2).times {|i| r+=2**(2*i+1)}
cnt = (r^s.to_i(2)).to_s(2).count("1")
puts cnt < n-cnt ? cnt : n-cnt
