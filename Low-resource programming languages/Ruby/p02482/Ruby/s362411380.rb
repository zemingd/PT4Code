input = STDIN.gets
n = input.split(" ")
n.collect! {|x| x.to_i}

if n[0] > n[1]
  puts "a > b"
elsif n[0] < n[1]
  puts "a < b"
else
  puts "a == b"
end