# frozen_string_literal: true

_ = gets.to_i
# group_byで数字ごとに集計する
a = gets.split.map(&:to_i).group_by(&:itself).map { |k, v| [k, v.count] }.to_h
sum = a.map { |k, v| k * v }.sum
q = gets.to_i
b = []
c = []
(1..q).map { |_n| tmp = gets.split.map(&:to_i); b << tmp[0]; c << tmp[1] }

q.times do |n|
  unless a[b[n]].nil?
    diff = a[b[n]] * (c[n] - b[n])
    sum += diff
    if a[c[n]].nil?
      a[c[n]] = a[b[n]]
    else
      a[c[n]] += a[b[n]]
    end
    a.delete(b[n])
  end
  # pp a
  puts sum
end
