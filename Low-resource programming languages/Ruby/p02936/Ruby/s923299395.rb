n, q = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n, 0)
arr = Array.new(n).map{Array.new}
(n-1).times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    arr[a-1] << b-1
end
q.times do
    pi, xi = gets.chomp.split(" ").map(&:to_i)
    ans[pi-1] += xi
end
arr.each_with_index do |e, i|
    e.each do |j|
        ans[j] += ans[i]
    end
end
print ans.join(" ")