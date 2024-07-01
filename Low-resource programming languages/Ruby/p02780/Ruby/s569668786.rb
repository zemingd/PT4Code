N, K = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
# arr2 = arr.map do |x|
#   (x * (x + 1) / 2) / x.to_f
# end
# p arr2
ans_i = 0
pre = 0
# binding.pry
(N - K + 1).times do |i|
  # ans_i = arr[i, K].inject(:+) if ans < arr[i, K].inject(:+)
  if pre < arr[i, K].inject(:+)
    pre = arr[i, K].inject(:+)
    ans_i = i
  end
end
ans = 0
arr[ans_i, K].each do |ar|
  ans += (ar * (ar + 1) / 2) / ar.to_f
end
puts ans