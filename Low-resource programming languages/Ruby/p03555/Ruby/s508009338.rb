# https://atcoder.jp/contests/abc077/tasks/abc077_a


Css = Array.new(2) { gets.chomp }
rCss = Css.map { |row| row.reverse }.reverse
cond = rCss == Css
puts cond ? 'YES' : 'NO'
