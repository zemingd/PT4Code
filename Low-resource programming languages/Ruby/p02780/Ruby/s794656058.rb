n, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
array_add = Array.new(n+1, 0)

n.times do |i|
    array_add[i+1] = array_add[i] + array[i]
end
array_pick = []
array_pick_sum = 0

(n-k+1).times do |i|
    if array_add[i+k] - array_add[i] > array_pick_sum
        array_pick << array[i..i+(k-1)]
        array_pick_sum = array_pick[-1].inject(:+)
    end
end
 
result = 0
 
array_pick[-1].each do |x|
    result += (x+1)/2.to_f
end
 
puts result
