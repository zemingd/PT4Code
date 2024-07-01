# https://atcoder.jp/contests/abc155/tasks/abc155_b



N = gets.to_i
As = gets.split.map(&:to_i)

cond = As.all? do |a|
  a.odd? || (a.even? && (a % 3 == 0 || a % 5 == 0))
end
puts cond ? 'APPROVED' : 'DENIED'
