ans = []

n, k = gets.chomp.split(" ").map(&:to_i);
h = readlines.map{|l| l.to_i}
h1 = h.sort

(n - k + 1).times do |i|
  ans << (h1[i + k -1] - h1[i]).abs
end
puts ans.min