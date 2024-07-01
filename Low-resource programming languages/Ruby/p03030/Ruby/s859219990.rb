ary = []
n   = gets.to_i

n.times do |i|
  tmp = gets.split
  ary << [tmp[0], tmp[1].to_i, i]
end

ary.sort{|a, b| a[0] > b[0] ? 1 : a[0] == b[0] && a[1] < b[1] ? 1 : -1}.each{|a| puts a[2] + 1}
