n, m = gets.chomp.split(' ').map(&:to_i)
arr = []
n.times do
  a_tmp, b_tmp = gets.chomp.split(' ').map(&:to_i)
  arr.push({day: a_tmp, money: b_tmp, tb: b_tmp.to_f/a_tmp})
end
arr.sort! {|a,b| b[:tb] <=> a[:tb]}
kq = 0
arr.each do |tmp|
  next if tmp[:day] > (m + 1)
  kq += tmp[:money]
  m -= 1 
end
puts kq