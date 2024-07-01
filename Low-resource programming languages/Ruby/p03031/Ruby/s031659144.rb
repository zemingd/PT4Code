n,m = gets.split.map &:to_i
a = Array.new(m){ gets.split.map &:to_i }
b = gets.split.map &:to_i

ans = 0
[0,1].repeated_permutation(n) do |sw|
  chk = m.times.all? do |i|
    a[i][1..-1].map{|j|sw[j-1]}.inject(:+) % 2 == b[i]
  end
  ans += 1 if chk
end
puts ans