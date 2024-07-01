gets()
arr = gets().chomp().split(' ').map!(&:to_i)

arr.each_with_index do |v, i|
  arr[i] = v - i - 1
end

arr.sort!()

thr = arr[0]
i = 0

while i < arr.size() / 2 do
  i += 1
  thr = arr[i] if thr != arr[i]
end

sum = 0

arr.each do |v|
  sum += (v - thr).abs
end

puts sum
