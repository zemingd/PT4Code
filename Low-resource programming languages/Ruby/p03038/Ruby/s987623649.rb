n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
bc = []
m.times do |i|
  bc << gets.split.map(&:to_i) # b枚、cに書き換える
end
bc = bc.sort_by{|x|x[1]}
n.times do |i|
  if a[i] < bc[-1][1]
    a[i] = bc[-1][1]
    bc[-1][0] -= 1
    bc.pop if bc[-1][0] == 0
    break if bc.empty?
  end
end
p a.inject(:+)
