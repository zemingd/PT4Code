N = gets.to_i
arr = gets.chomp.split.map do |ar|
  ar = ar.to_i
  cnt = 0
  while ar.even?
    cnt += 1
    ar /= 2
  end
  cnt
end
# p arr
puts arr.inject(:+)