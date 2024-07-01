n, k = gets.chomp.split.map(&:to_i)

arr = []
n.times do |i|
  arr[i] = gets.chomp.split.map(&:to_i)
end
arr.sort!
arr.each do |a, b|
  if b >= k
    p a
    exit
  else
    k -= b
  end
end
