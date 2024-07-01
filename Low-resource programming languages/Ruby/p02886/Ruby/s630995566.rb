n = $stdin.gets.chomp.to_i
arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
    a_j.to_i
end

ans = 0

for i in 0..n-2
    for j in i + 1..n-1
        ans += arr[i]*arr[j]
    end
end 

puts ans