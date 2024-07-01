_,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
total = a[0]
f_max = a[0]
a.inject do |i,j|
  if f_max < j
    f_max = j
  end
  total += j
  j
end
node = Hash.new(0)
a.sort_by!{|e| e }.reverse!
a.each do |i|
  node[i] += 1
end

a << 0

while 0 < ( f_max = a.shift )
  while node[f_max] > 0
    node[f_max] -= 1
    node[f_max/2] += 1
    a.each_with_index do |e,idx|
      if e < f_max/2
        a.insert(idx,f_max/2)
        break
      end
    end
    total -= (f_max/2)+(f_max%2)
    m -= 1
    if m < 1
      break
    end
  end
  if m < 1 or total == 0
    break
  end
end
p total