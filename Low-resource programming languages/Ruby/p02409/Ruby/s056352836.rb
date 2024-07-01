divider = "#" * 20
input = Hash.new(0)
gets.to_i.times do
  b, f, r, v = gets.split.map!(& :to_i)
  input["#{b} #{f} #{r}"] += v
end
1.upto(4) do |i|
  1.upto(3) do |j|
    1.upto(10) do |k|
      print input["#{i} #{j} #{k}"]
      if k == 10 then puts end
    end
    puts
  end
  puts (i != 4) ? divider : ""
end 