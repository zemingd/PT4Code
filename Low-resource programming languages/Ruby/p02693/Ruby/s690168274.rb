k=gets.chomp.to_i
a,b=gets.chomp.split(" ").map{|i|i.to_i}
res = ""
a.upto(b) do |i|
  if i % k == 0
    res = "OK"
    break
  else
    res = "NG"
  end
end
puts res