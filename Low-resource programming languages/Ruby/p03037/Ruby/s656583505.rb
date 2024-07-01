# N = gets.chomp.to_i
N, M = gets.chomp.split.map(&:to_i)
mostL = 0
mostR = N + 1
M.times do 
  l, r = gets.chomp.split.map(&:to_i)
  if mostL < l
    mostL = l  # shrink
  end
  if r < mostR
    mostR = r  # shrink
  end
end
# A = Array.new(N + 1, 0)  # 0 means no trap, 1 means existence of trap. 1-indexed

# Now, L, L + 1, .. R can be used

p mostR - (mostL - 1)
