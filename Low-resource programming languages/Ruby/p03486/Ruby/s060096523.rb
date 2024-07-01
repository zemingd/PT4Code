# https://atcoder.jp/contests/abc082/tasks/abc082_b



s = gets.chomp.chars.sort.join
t = gets.chomp.chars.sort.reverse.join

puts s < t ? 'Yes' : 'No'
