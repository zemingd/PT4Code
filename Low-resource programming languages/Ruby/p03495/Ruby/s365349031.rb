n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
ans = 0

a.each do |e|
    h[e] += 1
end

if h.size <= k then
    puts "0"
    exit
end

hashToArray = h.sort_by{|key, value| value}

(h.size-k).times do |i|
    ans += hashToArray[i][1]
end

puts ans
