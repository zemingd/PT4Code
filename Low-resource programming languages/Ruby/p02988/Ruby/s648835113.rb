n = gets.to_i
P_arr = gets.split.map(&:to_i)
arr = []
counter = 0

(1..(n-2)).each do |i|
  arr << P_arr[i-1]
  arr << P_arr[i]
  arr << P_arr[i+1]
  arr.sort!
    if P_arr[i] == arr[1]
      counter += 1
    end
  arr = []
end

p counter
