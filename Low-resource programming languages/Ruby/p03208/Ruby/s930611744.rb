n, k = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do |i|
    a = gets.chomp.to_i
    arr << a
end
arr = arr.sort
st = 0
ans = 100000000000
while true
    sa = arr[st + k - 1] - arr[st]
    ans = [ans,sa].min
    if st + k - 1 == n - 1
         break
    end
    st += 1
end
puts ans