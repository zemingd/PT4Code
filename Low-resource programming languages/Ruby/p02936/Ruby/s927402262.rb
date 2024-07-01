n, q = gets.chomp.split(' ').map(&:to_i)
arr = []
n.times { arr.push([0, [], []]) }
(n - 1).times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  arr[a - 1][2].push(b - 1)
  arr[b - 1][1].push(a - 1)
end
q.times do
  p, x = gets.chomp.split(' ').map(&:to_i)
  arr[p - 1][0] += x
end
targets = [0]
while targets.count > 0 do
  target = targets.shift
  targets += arr[target][2]
  children = arr[target][2]
  children.each do |i|
    arr[i][0] += arr[target][0]
  end
end
puts arr.map{ |i| i[0] }.join(' ')