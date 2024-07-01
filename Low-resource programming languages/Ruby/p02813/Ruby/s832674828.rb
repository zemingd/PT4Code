n = gets.to_i
p = gets.chomp.split(' ').join
q = gets.chomp.split(' ').join
arr = []
n.times { |i| arr << (i + 1) }
def rec(arr1, arr2)
  return [arr2.join('')] if arr1.length == 0
  res = []
  arr1.each do |i|
    copied_arr1 = arr1.dup
    copied_arr1.delete(i)
    copied_arr2 = arr2.dup
    copied_arr2 << i
    res += rec(copied_arr1, copied_arr2)
  end
  return res
end
list = rec(arr, [])
a, b = 0, 0
list.each_with_index do |x, i|
  a = i + 1 if x == p
  b = i + 1 if x == q
end
puts (a - b).abs