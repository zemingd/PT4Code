# B - Papers, Please
# https://atcoder.jp/contests/abc155/tasks/abc155_b

N = gets.chomp.to_i
A = gets.chomp.split().map(&:to_i)

ans = A.select(&:even?).all? {|a| a%3 == 0 || a%5 == 0}

if ans
    p "APPROVED"
else
    p "DENIED"
end