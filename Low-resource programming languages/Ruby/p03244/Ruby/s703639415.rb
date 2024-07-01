#! /usr/bin/env ruby

input = STDIN.read.split("\n").map{|l| l.split(" ").map{|i| i.to_i}}
d = input[1]

# even, odd のそれぞれの要素ごとの個数を数える

evens = {}
odds = {}

def countup(dic, v)
  if dic.has_key?(v) then
    dic[v] = dic[v] + 1
  else
    dic[v] = 1
  end
end

d.each_with_index do |v, i|
  if i % 2 == 1 then
    odds_cnt = odds_cnt
    countup(odds, v)
  else
    countup(evens, v)
  end
end

# それぞれの最大個数を持つ要素を取り出す
odds_max = odds.max{|x,y| x[1] <=> y[1]}
evens_max = evens.max{|x,y| x[1] <=> y[1]}

odds_max_v = odds_max[0]
odds_max_cnt = odds_max[1]
evens_max_v = evens_max[0]
evens_max_cnt = evens_max[1]

# もし、最大個数の要素が一致していたら、2番めに多い個数の要素を取り出す
if odds_max_v == evens_max_v then
  if odds_max_cnt > evens_max_cnt then
    evens.delete(evens_max_v)
    if evens.length == 0 then
      evens_max = [0,0]
    else
      evens_max = evens.max{|x,y| x[1] <=> y[1]}
    end
    evens_max_v = evens_max[0]
    evens_max_cnt = evens_max[1]
  else
    odds.delete(odds_max_v)
    if odds.length == 0 then
      odds_max = [0,0]
    else
      odds_max = odds.max{|x,y| x[1] <=> y[1]}
    end
    odds_max_v = odds_max[0]
    odds_max_cnt = odds_max[1]
  end
end

p d.length - evens_max_cnt - odds_max_cnt
