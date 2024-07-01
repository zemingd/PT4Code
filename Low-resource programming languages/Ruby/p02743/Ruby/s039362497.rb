# https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_c


a, b, c = gets.split.map(&:to_i)
x=(c-a-b)*(c-a-b)-a*b*4;
cond=false
if x>0
    cond=true
end

puts cond ? 'Yes' : 'No'
