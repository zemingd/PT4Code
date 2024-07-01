n, m = gets.split(" ").map(&:to_i)
h_arr = [0] + gets.split(" ").map(&:to_i)

path_arr = []
m.times do
  a, b = gets.split(" ").map(&:to_i)

  path_arr[a] ||= []
  path_arr[a] << b
  path_arr[b] ||= []
  path_arr[b] << a
end
path_arr[n] ||= []

count = 0
path_arr.each_with_index do |arr, i|
  next if i == 0

  good = true
  height = h_arr[i]
  arr&.each do |ind|
    if height <= h_arr[ind]
      good = false 
      break
    end
  end

  count += 1 if good
end
puts count
  
