# Problem https://atcoder.jp/contests/abc064/tasks/abc064_a
# Ruby 3rd Try

yes = "YES"
no = "NO"
r,g,b = gets.chomp('\n').split(' ').map(&:to_i)

gbMod4 = (g*10+b) % 4
if gbMod4 == 0
    puts(yes)
else
    puts(no)
end