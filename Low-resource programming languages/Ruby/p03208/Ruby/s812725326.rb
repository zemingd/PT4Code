N,K = gets.chomp.split(" ").map(&:to_i)
h_s = []
N.times do |i|
    h_s << gets.chomp.to_i
end
h_s = h_s.sort
sort_h_s = []
(h_s.length-K+1).times do |i|
    sliced_retu = h_s.slice(i,i+K)
    sort_h_s << sliced_retu.max - sliced_retu.min
end
puts sort_h_s.min
