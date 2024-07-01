# Problem https://atcoder.jp/contests/abc064/tasks/abc064_a
yes = "YES"
no = "NO"

r,g,b = gets.chomp('\n').split(' ').map(&:to_i)
allNumber = r*100 + g*10 + b
amari = allNumber % 4
if amari == 0
    puts(yes)
else
    puts(no)
end
