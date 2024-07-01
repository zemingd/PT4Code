n, m = gets.chomp.split(" ").map(&:to_i)
ans = [] # P, Y, 入力順, x
x = Array.new(n+1, 0)

m.times do |i|
    input = gets.chomp.split(" ").map(&:to_i)
    input << i
    ans << input
end

ans.sort_by!{|v| v[1]}

m.times do |i|
    x[ans[i][0]] += 1
    ans[i] << x[ans[i][0]]
end

ans.sort_by!{|v| v[2]}

ans.each do |res|
    printf("%06d%06d", res[0], res[3])
    puts ""
end