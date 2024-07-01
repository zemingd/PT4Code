# Problem https://atcoder.jp/contests/abc095/tasks/abc095_a
# Ruby 2nd Try

memo = gets.chomp('\n')
check = memo.count('o')

answer = 700 + check * 100
puts(answer)