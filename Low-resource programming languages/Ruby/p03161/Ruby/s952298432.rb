n, k = gets.split(' ').map(&:to_i)
arr = gets.split(' ').map(&:to_i)
 
ds = [0]
(1...n).each do |i|
  m = nil
  [0, i-k].max.upto(i-1) do |j|
    tmp = ds[j] + (arr[j] - arr[i]).abs
    m = tmp if !(m && m < tmp)
  end
  ds << m
end

puts ds[-1]