first = gets.split.map(&:to_i)
sec = gets.split.map(&:to_i)
thi = gets.split.map(&:to_i)
d1 = [first[0], sec[0], thi[0]]
d2 = [first[1], sec[1], thi[1]]
d3 = [first[2], sec[2], thi[2]]
c1 = [first[0],sec[1],thi[2]]
c2 = [first[2],sec[1],thi[0]]
data = [first, sec, thi, d1, d2, d3, c1, c2]
n = gets.to_i
nums = []
n.times do
  nums.push(gets.to_i)
end

res = "No"
data.each do |row|
  flag = 0
  row.each do |n|
    if nums.include?(n)
      flag += 1
    end
  end
  if flag == 3
    res = "Yes"
  end
end
  puts res