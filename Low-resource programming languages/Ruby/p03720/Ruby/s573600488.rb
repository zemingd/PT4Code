N, M = gets.chomp.split.map(&:to_i)
aa = Array.new(M)
bb = Array.new(M)

M.times do |i|
  aa[i], bb[i] = gets.chomp.split.map(&:to_i) 
end

for i in 1..N do
  puts aa.count(i) + bb.count(i)
end