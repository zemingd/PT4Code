len = gets.to_i
arr = gets.split(' ').map(&:to_i)
cnt = 0

0.upto(len-2) do |i|
  (len-1).downto(i+1) do |j|
    if arr[j] < arr[j-1]
      arr[j], arr[j-1] = arr[j-1], arr[j]
      cnt += 1
    end
  end
end

puts arr.join(' ')
puts cnt
