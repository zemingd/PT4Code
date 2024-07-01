n=gets.chomp.to_i

ret=10
1.upto n do |a|
  break if a*a>n
  next if n%a>0
  b=n/a
  ret=[ret, [a.to_s.size, b.to_s.size].max].min
end
puts ret