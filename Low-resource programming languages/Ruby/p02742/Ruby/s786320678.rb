# K = gets.chomp.to_i
# A = [1, 1, 1, 2, 1, 2, 1, 5, 2, 2, 1, 5, 1, 2, 1, 14, 1, 5, 1, 5, 2, 2, 1, 15, 2, 2, 5, 4, 1, 4, 1, 51]
H, W = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

# in odd, (W+1)/2
# in even, W/2

ans = 0
half = H/2

ans += (W+1)/2 * half
ans += (W)/2 * half

if (H % 2 == 1) # odd exist
  ans += (W+1)/2
end

p ans