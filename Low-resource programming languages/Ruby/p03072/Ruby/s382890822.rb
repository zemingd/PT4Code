n = $stdin.gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
kabe = 0;ans = 0
n.times do |k|
  if arr[k] >= kabe
    ans += 1
  end
  if arr[k] > kabe
    kabe = arr[k]
  end
end
puts ans