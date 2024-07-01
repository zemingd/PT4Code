N = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i)

# A, B, C = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

# This is same with the count of flip.

ans = 1
minV = P[0]
(1.upto(N-1)).each do |i|
  # p "minV: #{minV}"
  # p "P[i]: #{P[i]}"
  if (P[i] < minV) 
    ans += 1
  end
  if (P[i] < minV)
    minV = P[i]
  end
end

p ans