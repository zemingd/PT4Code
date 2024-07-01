N = gets.chomp.to_i
# d = gets.chomp.split.map(&:to_i)
S = gets.chomp.chars

cnt = 1
prev_color = S[0]

1.upto(N-1).each do |i|
  if (S[i] == prev_color)
    next
  else
    prev_color = S[i]
    cnt += 1
  end
end

p cnt