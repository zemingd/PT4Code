# https://atcoder.jp/contests/abc082/tasks/abc082_b
# Ruby 2nd Try
yes = "Yes"
no = "No"
s = gets.chomp
t = gets.chomp
eachS = s.chars
eachT = t.chars
smallS = eachS.sort.join
largeT = eachT.sort.reverse.join
# checkStr = smallS + '<' + largeT
# puts(checkStr)
(smallS < largeT) ? ( puts(yes) ):( puts(no) )
