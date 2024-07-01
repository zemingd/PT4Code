# Problem https://atcoder.jp/contests/abc064/tasks/abc064_a
# Ruby 2nd Try

yes = "YES"
no = "NO"
a,b,c = gets.chomp('\n').split(' ').map(&:to_i)
rgbmod = (b*10+c) % 4
if rgbmod == 0
    puts(yes)
else
    puts(no)    
end