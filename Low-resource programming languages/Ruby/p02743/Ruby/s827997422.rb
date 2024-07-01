# https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_c

require 'bigdecimal'
require 'bigdecimal/util'
require 'bigdecimal/math'

a, b, c = gets.split.map(&:to_d)

cond=false
t=50
x=BigMath::sqrt(a,t)+BigMath::sqrt(b,t)
y=BigMath::sqrt(c,t)
if x<y
    cond=true
end
puts cond ? 'Yes' : 'No'
