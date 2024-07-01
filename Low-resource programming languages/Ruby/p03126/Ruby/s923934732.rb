N, M = gets.split.map(&:to_i)
num = Array.new(M+1, 0)
N.times do
  as = gets.split.map(&:to_i)
  as.shift
  as.each do |a|
    num[a] += 1
  end
end
puts (1..M).count{|i| num[i] == N}