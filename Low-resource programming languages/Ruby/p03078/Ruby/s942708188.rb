def search(arr1,arr2,k)
  result_arr = []
  arr1.each do |i|
    arr2.each do |j|
      break if result_arr.size >= k && result_arr.min > i + j
      result_arr << i + j
    end
  end
  result_arr.sort.reverse[0..k - 1]
end

x,y,z,k = gets.chomp.split(' ').map(&:to_i)
x_arr   = gets.chomp.split(' ').map(&:to_i).sort.reverse
y_arr   = gets.chomp.split(' ').map(&:to_i).sort.reverse
z_arr   = gets.chomp.split(' ').map(&:to_i).sort.reverse

search(search(x_arr,y_arr,k), z_arr,k).each do |i|
  puts i
end