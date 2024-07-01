n, m = gets.split.map(&:to_i)
a = []
b = []
count = 0
a_bridge = 0
b_bridge_min = 0
b_bridge_max = 0

m.times do |i|
  a_num, b_num = gets.split.map(&:to_i)
  a.push(a_num)
  b.push(b_num)
end

m.times do |i|
  if i == 0
    a_bridge = a[0]
    b_bridge_min = b[0]
    b_bridge_max = b[0]
    count = 1
  end

  if a_bridge < a[i]
    a_bridge = a[i]
    if b_bridge_min < b[i]
      if a_bridge >= b_bridge_min && a_bridge <= b_bridge_max
        count += 1
      end
    else
      b_bridge_min = b[i]
    end
  elsif a_bridge == a[i]
    if b_bridge_min > b[i]
      b_bridge_min = b[i]
    else
      b_bridge_max= b[i]
    end
  end
end

puts count