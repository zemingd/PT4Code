n = gets
n = n.split(" ").map{|x| x.to_i}
if n[0] < n[1]
  puts "a < b"
elsif n[0] > n[1]
  puts "a > b"
else
  puts "a == b"
end