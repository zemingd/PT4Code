# B - Papers, Please
# https://atcoder.jp/contests/abc155/tasks/abc155_b

N = gets
A = gets.chomp.split().map(&:to_i)

p A.select(&:even?).all? {|a| a%3 == 0 || a%5 == 0} ? 'APPROVED' : 'DENIED'
