# coding: utf-8
N = gets.to_i
L = gets.split.map {|e| e.to_i}
ans = 0

L.sort!
# aとbの二重ループで決めてしまって、Cを探す
(0..N-3).each do |i|
  (i+1..N-2).each do |j|
    t = L[i] + L[j]
    r = L.bsearch_index {|x| x >= t}
    r = N if r.nil?
    l = j + 1
    ans += r-l
  end
end

puts ans

