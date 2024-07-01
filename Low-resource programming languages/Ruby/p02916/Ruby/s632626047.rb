n = gets.chomp.to_i
alist = gets.chomp.split.collect{ |item| item.to_i}
blist = gets.chomp.split.collect{ |item| item.to_i}
clist = gets.chomp.split.collect{ |item| item.to_i}

ans = 0
before = -2
n.times do |ni|
  a = alist[ni]
  ans += blist[a-1]
  ans += clist[before-1] if ((before+1) == a)
  before = a
end

puts ans
