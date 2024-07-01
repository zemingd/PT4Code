n = gets.chomp.to_i
s = Hash.new(0)

n.times do
    input = gets.chomp
    s[input] += 1
end

s = s.sort_by{|_, v| v}.reverse
ans = []
maxim = s[0][1]

s.each do |a|
    break if maxim != a[1]
    ans << a[0]
end

ans.sort!

ans.each do |i|
    puts i
end