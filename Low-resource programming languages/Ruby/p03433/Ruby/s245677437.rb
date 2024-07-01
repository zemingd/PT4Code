# Problem https://atcoder.jp/contests/abc088/tasks/abc088_a
# Reference https://atcoder.jp/contests/abc088/submissions/7236946
# Ruby 1st Try
N = gets.chomp('\n').to_i
A = gets.chomp('\n').to_i
yes = "Yes"
no = "No"

modYen = N % 500
if modYen <= A
    puts(yes)
else
    puts(no)
end