# coding: utf-8
def count(l, r, n, s)
  # 部分文字列を切り出す
  l = l - 1
  sub_s = s[l...r]
  # "AC"が含まれる回数をカウントする
  return sub_s.scan("AC").length
end

n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp

q.times do
  line = gets.chop.split.map(&:to_i)
  l, r = line
  puts count(l, r, n, s)
end
