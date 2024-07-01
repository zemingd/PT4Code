INF = 10**12
n = gets.to_i
arr = gets.split.map(&:to_i).sort_by!{|x|x}
# p arr
ans = INF
arr[0].upto(arr[-1]) do |t|
  pre = 0
  n.times do |i|
    pre += (arr[i] - t)**2
  end
  ans = [ans, pre].min
end
puts ans