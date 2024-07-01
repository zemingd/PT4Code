input = readlines()

length = input.shift.chomp.to_i
list = input.shift.chomp.split("\s").map{|x| x.to_i}

l_max = list.max

ary = Array.new(l_max, true)

list.sort!
prev = nil
list.each do |l1|
  cnt = 2
  y = l1 * 2
  while(y <= l_max)
    break if ary[y - 1] == false
    ary[y - 1] = false
    cnt += 1
    y = l1 * cnt
  end
  ary[l1 - 1] = false if l1 == prev
  prev = l1
end

t = 0
list.each do |l1|
  t += 1 if ary[l1 - 1] == true
end

p t
