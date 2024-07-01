n,m = gets.chomp.split(" ").map(&:to_i)
k = []
s = Array.new{Array.new}
m.times do |i|
  s[i] = gets.chomp.split(" ").map(&:to_i)
end
p = gets.chomp.split(" ").map(&:to_i)
ans = 0
[0,1].repeated_permutation(n).each do |x|
  on = true
  m.times do |i|
    cnt = 0
    s[i][0].times do |j|
      cnt += 1 if x[s[i][j+1]-1] == 1
    end
    if cnt % 2 != p[i]
      on = false
    end
  end
  if on
    ans += 1
  end
end
puts ans
