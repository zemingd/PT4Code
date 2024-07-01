N = gets.to_i
a = gets.split.map(&:to_i)

pat = a.permutation(2)
cnt = 1
ans_cnt = 0
ans = 0

pat.each do |i,j|
  if N == cnt
    ans += 1 if ans_cnt == 0;
    cnt = 1
    ans_cnt = 0;
  end

  ans_cnt += 1 if i % j == 0
  cnt += 1
end

ans += 1 if ans_cnt.zero?

puts ans
