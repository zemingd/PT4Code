n,c = gets.chomp.split(" ").map{ |item| item.to_i}
list = []
100000.times do |st|
  list[st] = []
  c.times do |cc|
    list[st][cc] = 0
  end
end
n.times do |nn|
  s,t,cc = gets.chomp.split(" ").map{ |it| it.to_i}
  s.upto(t) do |st|
    list[st-1][cc-1] = 1
  end
end
size = 1
list.each do |one|
  nsize = one.count(1)
  size = nsize if nsize > size
end
print "#{size}\n"