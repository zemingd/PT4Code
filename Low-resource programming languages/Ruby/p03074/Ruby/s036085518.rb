n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp
one = s.scan(/1{1,}/)
zero = s.scan(/0{1,}/)
if one.size == 0 || zero.size == 0
  p n
  exit
end
len = Array.new(one.size + zero.size, 0)
ptr = 0
if s[0] == "1"
  (one.size).times do |i|
    len[ptr] = one[i].size
    ptr += 1
    len[ptr] = zero[i].size if zero[i] != nil
    ptr += 1
  end
else
  (zero.size).times do |i|
    len[ptr] = zero[i].size
    ptr += 1
    len[ptr] = one[i].size if one[i] != nil
    ptr += 1
  end
end
o = [k, one.size, zero.size].min
n = len.size - o
ans = Array.new(n, 0)
n.times do |i|
  ans[i] += len[i]
  o.times do |j|
    ans[i] += len[i+j+1]
  end
  ans[i] += len[i+o] if s[0] == "1"
end
p ans.max