mod = 998244353
n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort
if n == 1
  if arr[0] == 0
    puts 1
  else
    puts 0
  end
  exit(0)
else
  prev = arr[0]
  if prev != 0
    puts 0
    exit(0)
  end
  (1...n).each do |i|
    current = arr[i]
    if current - prev > 1 || current == 0
      puts 0
      exit(0)
    end
    prev = current
  end
end
map = Hash.new(0)
arr.each do |i|
  map[i] += 1
end
prev_index = 0
result = 1
(1...map.count).each do |i|
  prev = map[prev_index]
  current = map[i]
  result *= prev ** current
  result %= mod
  prev_index = i
end
puts result % mod