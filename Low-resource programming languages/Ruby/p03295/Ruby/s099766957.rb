n, m = gets.split.map(&:to_i)
a = []
b = []
count = 0
bridge = 0
b_bridge = 0

m.times do |i|
  a_num, b_num = gets.split.map(&:to_i)
  a.push(a_num)
  b.push(b_num)
end

m.times do |i|
  if i == 0
    bridge = a[0]
    b_bridge = b[0]
    count = 1
  end

  if bridge < a[i]
    bridge = a[i]
    if b_bridge < b[i] && bridge >= b_bridge
      count += 1
    end
  elsif bridge == a[i]
    if b_bridge > b[i]
      b_bridge = b[i]
    end
  end
end

puts count