N = gets.to_i
arr = gets.split.map.with_index{|a, id| a.to_i - (id + 1)}.sort
pivot = arr[N/2]
def abs(n)
  n > 0 ? n : -n
end
ans = 0
N.times do |i|
  ans += abs(arr[i]-pivot)
end
puts ans
