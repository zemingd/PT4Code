n = gets.chomp.to_i
alist = gets.chomp.split.collect{ |item| item.to_i}
result = 0
nexttype = 1
option = false
last = alist.pop
blist = []
alist.each do |num|
  result += num.abs
  if (num < 0 && nexttype == 1)
    nexttype = -1
  elsif  (num > 0 && nexttype == 1)
    nexttype = 1
  elsif  (num < 0 && nexttype == -1)
    nexttype = 1
  elsif  (num > 0 && nexttype == -1)
    nexttype = -1
  end
  if num == 0
    option = true
  end
  blist.push(num.abs)
end
result += last.abs
alist.push(last)
blist.push(last.abs)
min = blist.min
if (((nexttype * last) < 0) && (option == false))
  result -= min*2
end
puts result