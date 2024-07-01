n = gets.to_f
li = Array.new()
5.times do |i|
  li[i] = gets.to_f
end
m = li.min
p (n/m).ceil + 4
