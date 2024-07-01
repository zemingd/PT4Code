N, M = gets.split.map &:to_i
a = Array.new(M, 0)
N.times do
  xs = gets.split.map &:to_i
  xs.shift
  xs.each do |e|
    a[e-1] += 1
  end
end
puts a.count { |e| e == N }