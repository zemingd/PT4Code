N,K = gets.chomp.split(" ").map(&:to_i)
h_s = []
N.times do |i|
    h_s << gets.chomp.to_i
end
h_s = h_s.sort
sort_h_s = []
(h_s.length-K+1).times do |i|
    sort_h_s << h_s[i+K-1] - h_s[i]
end
puts sort_h_s.min
