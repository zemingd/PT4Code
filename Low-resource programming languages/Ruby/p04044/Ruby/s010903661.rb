N, L = gets.split.map(&:to_i)
Ss = Array.new(N)
N.times do |i|
  Ss[i] = gets.chomp
end

puts Ss.sort.join
