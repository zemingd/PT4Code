X,Y,Z,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort.reverse
B = gets.split.map(&:to_i).sort.reverse
C = gets.split.map(&:to_i).sort.reverse

res = []
X.times do |i|
  Y.times do |j|
    break if res.size >= K
    Z.times do |k|
      break if res.size >= K
      res.push(A[i] + B[j] + C[k])
    end
  end
end

res.sort!
res.reverse!
res.each {|p| puts p}
