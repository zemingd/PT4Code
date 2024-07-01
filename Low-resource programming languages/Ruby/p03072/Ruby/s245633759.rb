N = gets.to_i
H_n = gets.split.map(&:to_i)

max = 0
ans = 0
N.times do |i|
  if max <= H_n[i]
    max = H_n[i]
    ans += 1
  end
end
p ans