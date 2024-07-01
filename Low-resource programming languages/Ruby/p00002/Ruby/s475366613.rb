while gets do
  a, b = $_.split(" ").map{|i| i.to_i}
  puts (a + b).to_s.length
end