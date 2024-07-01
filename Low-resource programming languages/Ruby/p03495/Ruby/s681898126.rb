n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

h = Hash.new(0)
sum = 0

a.each do |e|
    h[e] += 1
end

if h.size <= k then
    puts "0"
exit 
end


H = h.sort_by { |_, v| v }

(h.size - k).times do |i|
    sum += H[i][1]
end

puts sum


