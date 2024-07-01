n, m = gets.split.map(&:to_i)
arr = [0] + gets.split.map(&:to_i)

flag = Array.new(n+1, true)
flag[0] = false
m.times do
  a, b = gets.split.map(&:to_i)
  ind = arr[a] < arr[b] ? a : b
  flag[ind] = false
  flag[a] = false if arr[a] == arr[b]
end
puts flag.select{|a| a}.count