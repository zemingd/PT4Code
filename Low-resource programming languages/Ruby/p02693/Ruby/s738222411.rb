k=gets.chomp.to_f
a,b=gets.chomp.split(" ").map{|i|i.to_i}
res = ""
a.upto(b) do |i|
  if i % k == 0
    res = "ok"
    break
  else
    res = "NG"
  end
end
puts res
  