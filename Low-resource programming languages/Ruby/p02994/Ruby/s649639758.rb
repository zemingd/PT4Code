n, l = gets.split.map(&:to_i)
arr = []
1.upto(n) do |i|
  arr << l + i - 1
end
eaten_apl = arr.map{|i| i.abs}.sort.first
arr.delete_if do |i|
 i.abs === eaten_apl
end
puts arr.inject(:+)