n = gets.chomp.to_i
ans = Hash.new(0)
n.times do
    a = gets.chomp
    ans[a] += 1
end

ans = ans.select{|k, v| v % 2 != 0}

puts ans.size