n, k = gets.chomp.split.map(&:to_i)
h_list=[]
n.times do
    h_list.push(gets.chomp.to_i)
end
h_sorted = h_list.sort!
ans = h_sorted[-1] - h_sorted[0]
0.upto(n-k) do |i|
    diff = h_sorted[i+k-1] - h_sorted[i]
    ans = diff if diff < ans
end

puts ans