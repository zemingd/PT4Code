require 'set'

S=gets.chomp
T=gets.chomp

used = Set.new
to = {}
from = {}
(?a..?z).each do |c|
  to[c] = c
  from[c] = c
end
S.chars.zip(T.chars).each do |s, t|
  if to[s] == t
    used << from[t]
    next
  end
  if used.include?(to[s]) || used.include?(t)
    puts :No
    exit
  end
  used << from[t]
  ts, ft = to[s], from[t]
  fts = from[ts]
  to[fts] = t
  from[t] = fts
  to[ft] = ts
  from[ts] = ft
end
puts :Yes
