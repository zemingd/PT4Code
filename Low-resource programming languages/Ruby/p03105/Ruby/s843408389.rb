a,b,c = gets.split(" ").map{|e| e.to_i}

d = b/a
if c>d
  puts d
else
  puts c
end