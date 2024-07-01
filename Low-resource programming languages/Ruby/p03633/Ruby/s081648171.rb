require 'prime'
N, *TS = $stdin.read.split.map(&:to_i)
ans = {}
TS.map(&:prime_division).each do |items|
  items.each do |k, n|
    ans[k] = n if ans[k].nil? || n > ans[k]
  end
end
p ans.map{|n, k| n**k}.inject(:*)
