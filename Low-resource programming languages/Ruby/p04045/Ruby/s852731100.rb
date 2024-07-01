n, k = gets.split.map(&:to_i)
darr = gets.split.map(&:to_i)
uarr = (0..9).to_a - darr

num = -1
arr = Array.new(10, 0)
uarr.each do |n|
  (n - num).times do |j|
    arr[num + j + 1] = n
  end
  num = n
end

flag = false
snum_arr = n.to_s.chars
snum_arr.length.times do |i|
  num = snum_arr[i].to_i
  snum_arr[i] = flag ? arr[0].to_s : arr[num].to_s
  flag ||= arr[num] != num
end

snum_arr.unshift(arr[1].to_s) if snum_arr[0] == "0"
puts snum_arr.join