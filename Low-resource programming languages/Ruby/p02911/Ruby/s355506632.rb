nkq = gets.chomp.split
n = nkq[0].to_i
k = nkq[1].to_i
q = nkq[2].to_i

ans = Array.new(n+1, 0)
q.times do
    a = gets.to_i
    ans[a] += 1
end

n.times do |i|
    if q - k < ans[i+1]
        puts "Yes"
    else
        puts "No"
    end
end