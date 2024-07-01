# https://atcoder.jp/contests/abc147/tasks/abc147_a



As = gets.split.map(&:to_i)
cond=false
if As[0]+As[1]+As[2]>=22
    cond=true
end
puts cond ? 'bust' : 'win'
