i = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
ans = 0
(i-2).times{|t|
if arr[t] > arr[t+1] and arr[t+1] > arr[t+2] then
    ans += 1
elsif arr[t] < arr[t+1] and arr[t+1] < arr[t+2] then
    ans += 1
end
}
print ans