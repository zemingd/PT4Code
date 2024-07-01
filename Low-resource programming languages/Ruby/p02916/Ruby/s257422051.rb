n = gets.to_i
a = gets.chomp.split(" ").map{|i|i.to_i}
b = gets.chomp.split(" ").map{|i|i.to_i}
c = gets.chomp.split(" ").map{|i|i.to_i}
manzoku = 0
memo = -1
n.times do |m|
 manzoku += b[a[m]-1]
  if memo == a[m] then
    manzoku += c[a[m-1]-1]
  end
    memo = a[m] + 1
end
  
 puts manzoku