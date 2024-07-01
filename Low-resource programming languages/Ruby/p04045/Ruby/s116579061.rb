n, k = gets.split.map(&:to_i)
darr = gets.split.map(&:to_i)
uarr = (0..9).to_a - darr

arr = []
uarr.each do |n|
  l = arr.length
  (n - l + 1).times do |j|
    arr[l + j] = n
  end
end
l = arr.length
(10 - l).times do |i|
  arr[l + i] = 0
end

snum_arr = n.to_s.chars
snum_arr.length.times do |i|
  num = snum_arr[i].to_i
  snum_arr[i] = arr[num].to_s
end

snum_arr.unshift(arr[1].to_s) if snum_arr[0] == "0"
puts snum_arr.join