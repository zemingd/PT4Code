n,m = gets.split(' ').map(&:to_i)
num_list = gets.split(' ').map(&:to_i).sort
change_datas = []
(0...m).each do |i|
  change_datas << gets.split(' ').map(&:to_i)
end
change_datas.sort_by!{|data| data[1]}.reverse!
change_list = []
change_datas.each do |data|
  change_num = [n - change_list.length, data[0]].min
  change_list.push(Array.new(change_num,data[1])).flatten!
  break if change_list.length >= n
end
change_list.push(Array.new(n - change_list.length, 0)).flatten! if change_list.length < n
sum = 0
(0...n).each do |i|
  sum += [change_list[i], num_list[i]].max
end
puts sum