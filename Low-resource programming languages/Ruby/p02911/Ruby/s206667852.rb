require 'pp'

n, k, q = gets.chomp!.split(" ").map(&:to_i)
a_n = []
q.times do |i|
    a_n << gets.chomp!.to_i
end

ans = {}
1.upto(n) do |i|
    ans[i] = 0
end

a_n.each do |i|
    ans[i] += 1
end

ans.each do |i, j|
    if k + j > q
        puts "Yes"
    else
        puts "No"
    end
end
