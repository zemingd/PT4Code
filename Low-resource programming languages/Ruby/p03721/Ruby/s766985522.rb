N, K = gets.chomp.split.map(&:to_i)

arr = []
N.times do
  a, b = gets.chomp.split.map(&:to_i)
  add_arr = Array.new(b, a)
  arr.concat(add_arr)
end
p arr[K-1]
