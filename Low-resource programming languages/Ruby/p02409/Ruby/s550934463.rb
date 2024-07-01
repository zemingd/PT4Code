divider = "#" * 20
input = {}
gets.to_i.times do
  b, f, r, v = gets.split.map!(& :to_i)
  input["#{b} #{f} #{r}"] += v
end
1.upto(4) do |i|
  1.upto(3) do |j|
    1.upto(10) do |k|
      print " " + input["#{i} #{j} #{k}"].to_s 
    end
    puts
  end
  if (i != 4) then 
  	puts divider
  end 
end 