n,q = gets.split.map(&:to_i)
s = gets.chomp

count = [0,0]
1.upto(n-1) do |i|
    count << count.last + (s[i-1] + s[i] == "AC" ? 1 : 0)
end

q.times do
    l,r = gets.split.map(&:to_i)
    puts count[r] - count[l]
end