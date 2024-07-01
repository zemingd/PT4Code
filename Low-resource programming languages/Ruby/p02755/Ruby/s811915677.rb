a,b=gets.split.map(&:to_i)
1.upto(100) do |i|
  if i*8/100==a && i*10/100==b
    puts i
    exit
  end
end
puts "-1"
