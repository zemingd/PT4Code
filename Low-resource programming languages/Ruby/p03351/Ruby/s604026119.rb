# https://atcoder.jp/contests/abc097/tasks/abc097_a



a, b, c, d = gets.split.map(&:to_i)
cond=false
if (a-c).abs<=d || ((a-b).abs<=d && (c-b).abs<=d)
    cond=true
end

puts cond ? 'Yes' : 'No'
