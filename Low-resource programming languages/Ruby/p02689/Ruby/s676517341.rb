N, M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
arr = Array.new(N) { Array.new() }
M.times do
  a, b = gets.split.map(&:to_i)
  arr[a - 1].append(b)
  arr[b - 1].append(a)
end
# p arr
good = N
arr.each_with_index do |hill, ind|
  max = H[ind]
  flag = false
  hill.map do |a|
    if max <= H[a - 1]
      flag = true
    end
  end
  good -= 1 if flag
end
puts good
