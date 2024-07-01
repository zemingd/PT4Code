# Problem https://atcoder.jp/contests/abc088/tasks/abc088_a
# Ruby 3rd Try
yes = "Yes"
no = "No"
N = gets.chomp('\n').to_i
A = gets.chomp('\n').to_i
oneYenUse = N % 500
if A < oneYenUse
    answer = no
else
    answer = yes    
end
puts(answer)