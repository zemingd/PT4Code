# https://atcoder.jp/contests/abc064/tasks/abc064_c


RES = Hash.new(0)
n = gets.to_i
nums = gets.split.map(&:to_i)

nums.each do |n|
  color = n / 400  
  RES[color] += 1
end

wilds = RES[8]
RES.delete(8)
# p RES
current_colors = RES.keys.size
puts [[current_colors, 1].max, [current_colors + wilds, 8].min].join(' ')