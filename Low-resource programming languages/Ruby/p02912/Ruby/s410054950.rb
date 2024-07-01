n, m = gets.split.map(&:to_i)
arr = gets.to_s.split(' ').map(&:to_f)

m.times do
  idx = arr.index(arr.max)
  arr[idx] /= 2
end

puts arr.map(&:to_i).inject(:+)