# 家に帰ったら整理して

# X Y Z K
# A1...AX
# B1...
# C1...

X, Y, Z, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort.reverse
B = gets.split.map(&:to_i).sort.reverse
C = gets.split.map(&:to_i).sort.reverse
V = []

A.each_with_index do |a, i|
  B.each_with_index do |b, j|
    break if (i+1) * (j+1) > K
    C.each_with_index do |c, k|
      break if (i+1) * (j+1) * (k+1) > K
      V << (a + b + c)
    end
  end
end

puts V.sort.reverse[0...K]