# https://atcoder.jp/contests/abc147/tasks/abc147_a


As = gets.split.map(&:to_i)

puts As.reduce(&:+) > 21 ? 'bust' : 'win'
