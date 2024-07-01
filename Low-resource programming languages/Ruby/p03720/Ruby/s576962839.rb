n,m = gets.split.map{|tmp|tmp.to_i}
counter = Array.new(n+1,0)
m.times do |i|
    a,b = gets.split.map{|tmp|tmp.to_i}
    counter[a] += 1
    counter[b] += 1
end
(1..n).each do |i|
    puts counter[i]
end