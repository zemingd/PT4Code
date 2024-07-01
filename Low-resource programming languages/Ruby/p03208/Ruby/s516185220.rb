n, k = gets.chomp.split.map(&:to_i)
arr = []
n.times{arr << gets.to_i}
arr.sort!
min = nil
i = 0
while true
    break if i + k - 1 > arr.length - 1
    diff = arr[i + k - 1] - arr[i]
    min = diff if min.nil? || min > diff
    i += 1
end
puts min