n, m = gets.chomp.split(' ').map(&:to_i)
arr = []
n.times do
  a_tmp, b_tmp = gets.chomp.split(' ').map(&:to_i)
  arr.push({day: a_tmp, money: b_tmp, tb: b_tmp.to_f/a_tmp})
end
arr.sort! {|a,b| b[:money]*b[:day] <=> a[:money]*a[:day]}
kq = 0
count = 0
arr.each do |tmp|
  next if tmp[:day] > m
  kq += tmp[:money]
  count+= 1
  m -= 1
  break if m == 0
end
puts kq