while true do
  a, b = gets.split.map{|x| x.to_i}
  if a == 0 and b == 0 then
    break
  end
  puts sprintf("%d %d", b, a)
end