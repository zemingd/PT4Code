l,r = gets.split(" ").map{|e| e.to_i}
min = 2019
l.upto(r-1) do|i|
  i.upto(r) do |j|
    min = (i*j)%2019 if min >= (i*j)%2019
    break if min == 0
  end
  break if min == 0
end

puts min
