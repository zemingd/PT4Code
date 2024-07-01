(s, t)(s, t) = STDIN.gets.split(' ')
(a, b) = STDIN.gets.split(' ').map{|n| n.to_i}
u = STDIN.gets
if u == s
  puts "#{a-1} #{b}"
elsif u == t
  puts "#{a} #{b-1}"
end